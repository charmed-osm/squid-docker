# Squid Docker image

- Upstream squid
- Ubuntu Focal
- Automatic configuration reload --> Ready for K8s

```
docker pull davigar15/squid:latest
```

## Test it locally (K8s)

``` bash
git clone https://github.com/charmed-osm/squid-docker
cd squid-docker/
```

### Enable registry

Microk8s:

```bash
microk8s.enable registry
```

Other K8s:

```bash
kubectl apply -f registry.yaml
```

### Upload image to the registry

```bash
docker build docker/ -t localhost:32000/squid:latest --no-cache
docker push localhost:32000/squid:latest
```
