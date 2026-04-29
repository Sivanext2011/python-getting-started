# test - DevSecOps Starter Kit

- Runtime: python
- Base image: python:3.12-slim
- Repository: https://github.com/Sivanext2011/python-getting-started.git
- Branch: main
- Git credentialsId: git-http-creds
- Port: 8080
- Image namespace: sivanext
- Image repository: finalsemproject
- Image: docker.io/sivanext/finalsemproject
- Jenkins: http://seliiuvd02756.seli.gic.ericsson.se:8080/
- Jenkins job: test-bootstrap
- Jenkins agent label: docker-kubectl
- Deploy target: kubernetes
- Cluster: dev-cluster
- Namespace: default
- Context: dev-context
- Jenkins kubeconfig credentialsId: kubeconfig
