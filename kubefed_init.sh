kubefed init federation \
  --host-cluster-context=kubernetes-admin@kubernetes \
  --dns-provider="coredns" \
  --dns-zone-name="xiaotech.com." \
  --apiserver-enable-basic-auth=true \
  --apiserver-enable-token-auth=true \
  --dns-provider-config="coredns-provider.conf" \
  --apiserver-arg-overrides="--anonymous-auth=false,--v=4" \
  --api-server-service-type="NodePort" \
  --api-server-advertise-address="172.30.81.192" \
  --image=docker.io/xiaotech/fcp-amd64:v1.9.0-alpha.3 \
  --etcd-image=registry.cn-hangzhou.aliyuncs.com/google_containers/etcd-amd64:3.1.12 \
  --etcd-persistent-storage=false

kubefed join cluster192 --host-cluster-context=c192 --cluster-context=c192  --context=federation
