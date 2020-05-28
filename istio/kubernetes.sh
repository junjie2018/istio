# 检查控制平面组件状态（ComponentStatus也是一种资源）
kubectl get componentstatus

# 很有表现力的一种查询pod的写法
kubectl get pods -o custom-columns:POD:metadata.name,NODE:spec.nodeName --sort-by spec.nodeName -n kube-system

# 监听pods的变化
kubectl get pods -w
kubectl get pods --watch

# 监听集群中的事件
kubectl get events --watch

# 查看某个容器的ServiceAccount的token
kubect exec -it curl-custom-sa -c main
cat /etc/run/secrets/kubernetes.io/serviceaccount/token

# etcd列出/registry下的所有key
etcdctl ls /registry                # etcd v2
etcdctl get /registry --prefix=true # etcd v3

# 不熟悉的指令
# 不熟悉的知识点：kubectl exec和kubectl attach区别在于：前者开启一个新的进程，后者附属在主进程上（到底是一个什么样的效果？）
kubectl attach
kubectl port-forward

# 设置可以让kubectl打印出整个监听事件的yaml文件
kubectl get pods -o yaml --watch

kubectl top node
kubectl top pod --all-namespace