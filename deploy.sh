az login
az ad sp create-for-rbac --skip-assignment
cd terraform
terraform init
terraform plan
terraform apply
az aks get-credentials --resource-group rg-atividadeinfra --name atividade-aks
kubectl apply -f aks/1-config
kubectl apply -f aks/2-db
kubectl apply -f aks/3-app