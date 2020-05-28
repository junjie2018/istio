# 快速创建一个service-account，并查看相关信息
kubectl create serviceaccount my-service-account
kubectl get sa
kubectl describe sa my-service-account

kubectl apply -f my-service-account.yml