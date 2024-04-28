helm repo add cilium https://helm.cilium.io/
helm repo update

helm install cilium cilium/cilium --version 1.15.4 \
  --namespace kube-system \
  --set ipam.operator.clusterPoolIPv4PodCIDR=10.42.0.0/16 \
  --set ipv4NativeRoutingCIDR=10.42.0.0/16
