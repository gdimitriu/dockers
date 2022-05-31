#! /usr/bin/env bash
set -e

#Provisioning a 3-node Docker Swarm cluster

while [ $# -gt 0 ]; do
    case "$1" in
        -h | --help)
            echo "$(USAGE)"; exit 2; shift;;
        -c | --cleanup)
            CLEANUP=1; shift 1;;
        -*) echo "Invalid argument $1"; exit 1;;
        *) break;
    esac
done

if [ -n "$CLEANUP" ]; then
    set +e
    docker-machine rm -f swarm-manager node-01 node-2 consul
    exit 0
fi

MACHINE_DRIVER=virtualbox

create_and_launch_consul() {
    docker-machine create consul
    eval $(docker-machine env consul)
    docker run -- detach --name consul --publish "8500:8500" --hostname "consul" progrium/consul -server - bootstrap
    docker run --link consul --rm martin/wait
}

create_machine() {
    docker-machine create --swarm --swarm-discovery "consul://$(docker-machine ip consul):8500" --engine-opt "cluster-store=consul://$(docker-machine ip consul):8500" --engine-opt "cluster-advertise=eth1:2376" $@
}

set -x

create_and_launch_consul
create_machine --swarm-master swarm-manager
create_machine "node-01"
create_machine "mode-02"

docker-machine env --swarm swarm-manager
