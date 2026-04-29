# Jenkins Job Bootstrap

Job name: `test-bootstrap`
Job type: `workflow-multibranch`
Repository: `https://github.com/Sivanext2011/python-getting-started.git`
Branch filter: `main`
Git credentialsId: `git-http-creds`
Jenkins URL: `http://seliiuvd02756.seli.gic.ericsson.se:8080/`
Jenkins agent label: `docker-kubectl`
Kubernetes cluster: `dev-cluster`
Namespace: `default`
Context: `dev-context`
Kubeconfig credentialsId: `kubeconfig`

Jenkins prerequisites:
- Install Pipeline, Branch API, Git, and Credentials Binding plugins.
- Create a file credential containing the kubeconfig using credentialsId `kubeconfig`.
- Create a Git credential in Jenkins using credentialsId `git-http-creds` if the repository is private.
- Ensure the Jenkins agent label `docker-kubectl` has `docker` and `kubectl` available.
