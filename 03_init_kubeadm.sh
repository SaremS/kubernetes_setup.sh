sudo rm /etc/containerd/config.toml
sudo systemctl restart containerd
kubeadm init --apiserver-cert-extra-sans=10.0.0.3 --apiserver-advertise-address=10.0.0.3 --pod-network-cidr=10.244.0.0/16

kubeadm token create --print-join-command > cluster_join_command.sh
