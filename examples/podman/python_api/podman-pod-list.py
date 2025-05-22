import podman
client=podman.PodmanClient()
for i in client.pods.list():
    print(i.attrs)