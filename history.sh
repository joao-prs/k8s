# - - - - - - - - - - - - - - - - - - - - - - - - - - 
# 
#  OBSERVACAO
# 
#  
#  toma cuidado com os IPs que coloquei, se voce
#  for instala-lo, vai precisar mudar eles e outras
#  especificaçoes do novo ambiente. mas de resto
#  eh basicamente copiar e colar.
#
# - - - - - - - - - - - - - - - - - - - - - - - - - - 


apt update && apt install -y apt-transport-https ca-certificates curl gnupg
# deu erro

sudo swapoff -a

echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.30/deb/ /' | tee /etc/apt/sources.list.d/kubernetes.list
chmod 644 /etc/apt/sources.list.d/kubernetes.list

curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.30/deb/Release.key | gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg 
chmod 644 /etc/apt/keyrings/kubernetes-apt-keyring.gpg

apt update

# file
cat <<EOF | sudo tee /etc/modules-load.d/containerd.conf
overlay
br_netfilter
EOF
# file apply 
sudo modprobe overlay
sudo modprobe br_netfilter


# file
cat <<EOF | sudo tee /etc/sysctl.d/99-kubernetes-cri.conf
net.bridge.bridge-nf-call-iptables  = 1
net.ipv4.ip_forward                 = 1
net.bridge.bridge-nf-call-ip6tables = 1
EOF

# apply
sudo sysctl --system


apt install -y containerd

systemctl enable --now containerd


mkdir /etc/containerd && containerd config default > /etc/containerd/config.toml

sed -i 's/SystemdCgroup = false/SystemdCgroup = true/g' /etc/containerd/config.toml

apt install -y kubelet kubeadm kubectl

apt-mark hold kubelet kubeadm kubectl


# inicie o cluster no control-plane master
kubeadm init --control-plane-endpoint="x.x.x.x:6443" \
    --upload-certs \
    --pod-network-cidr=10.20.0.0/16 \
    --service-cidr=10.10.0.0/16