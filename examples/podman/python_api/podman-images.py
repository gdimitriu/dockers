import podman
client=podman.PodmanClient()
print(client.images.list())