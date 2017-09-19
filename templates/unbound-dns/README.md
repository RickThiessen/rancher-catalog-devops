# Unbound DNS docker container
This docker container runs the unbound dns server. You must provide the listed
environment variables when running this container. When building this container
it downloads and compiles the latest unbound source code. You must version the
docker container to keep a consistent unbound version available.

## Docker build command:
```
docker build --force-rm -t development/unbound .
```

## Docker run command:
```
docker run -e vpc_dns=10.10.0.2 -e onprem_domain=wild.monkey.com -e onprem_dns=192.198.1.2 --rm -ti development/unbound
```

## Required environment variables for the docker container to run
1. **vpc_dns**=<default dns server (ip address)>
2. **onprem_domain**=<domain traffic to filter and send to the onprem dns server (some.domain.com)>
3. **onprem_dns**=<onprem dns server (ip address)>

## ECR
  571978632649.dkr.ecr.us-east-1.amazonaws.com/appriss-devops-services/unbound-dns

