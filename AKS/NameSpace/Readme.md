# Create Namespace
kubectl create namespace app1-namespace
kubectl create namespace app2-namespace

# Deploy resources in namespace
kubectl apply -f "path of yaml file" -n <namespace-name>
kubectl apply -f "path of yaml file" -n app1-namespace
kubectl apply -f "path of yaml file" -n app2-namespace

# View Deployments and service of a NameSpace
kubectl get deployments -n app1-namespace
kubectl get svc -n app2-namespace

kubectl get deployments -n app2-namespace
kubectl get svc -n app2-namespace
# To view all resoruces in one Name Space
kubectl get all -n <namespace-name>
kubectl get all -n app1-namespace

# To remove everything in one NameSpace
kubectl delete all --all -n <namespace-name>
kubectl delete all --all -n app1-namespace

# To remove namespace
kubectl delete namespace <namespace-name>