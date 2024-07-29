# Webtop for OCP
> project based on the upstream work by [LinuxServer dot io](https://github.com/linuxserver/docker-webtop) 

## run me locally
```bash
podman run -d \
    --name=webtop \
    --shm-size=1g \
    -e PUID=1000 \
    -e PGID=1000 \
    -p 3000:3000 \
    -p 3001:3001 \
    --restart unless-stopped \
    quay.io/springdo/fedora-webtop:1.0.0
```

## helm chart for OCP
with the repo cloned locally
```
oc login ...
helm upgrade --install my .
```

## remove me
```bash
podman stop webtop && podman rm webtop 
```

