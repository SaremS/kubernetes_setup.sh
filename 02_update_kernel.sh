sudo modprobe br_netfilter
sudo modprobe bridge

echo 'br_netfilter' | sudo tee -a /etc/modules
echo 'bridge' | sudo tee -a /etc/modules

sudo sysctl net.bridge.bridge-nf-call-iptables=1

echo 'net.bridge.bridge-nf-call-iptables=1' | sudo tee -a /etc/sysctl.conf
sudo sysctl -p

sudo sysctl -w net.ipv4.ip_forward=1

echo 'net.ipv4.ip_forward=1' | sudo tee -a /etc/sysctl.conf
sudo sysctl -p

sudo apt update && sudo apt upgrade -y

mv /etc/containerd/config.toml /root/config.toml.bak
systemctl restart containerd
