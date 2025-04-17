# Step 01 : Create a public IP
Create Public IP from Azure Portal or Az cli command and note the public IP address for future reference
## 135.235.209.49

# Step 02: Install Ingress Controller from Helm
    #1. kubectl create namespace ingress-pathbase

    #2. Install Helm(if not installed)

    > winget install Helm.Helm   #for helm installation details https://helm.sh/docs/intro/install/ 

    #3  Add the official stable repository
        > helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
        > helm repo update

    #4 Install/Deploy Nginx Ingress Controller

        helm install ingress-nginx-1 ingress-nginx/ingress-nginx `
            --namespace ingress-pathbase `
            --set controller.replicaCount=2 `
            --set defaultBackend.nodeSelector."kubernetes\.io/os"=linux `
            --set controller.service.externalTrafficPolicy=Local `
            --set controller.service.loadBalancerIP="135.235.209.49" `
            --set controller.ingressClassResource.name=nginx `
            --set controller.ingressClassResource.controllerValue=k8s.io/ingress-nginx-1

# Step 03 : Deploy our own Yaml files of our apps