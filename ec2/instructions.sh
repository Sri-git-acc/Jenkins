#!/bin/bash
ARCH=amd64
PLATFORM=$(uname -s)_$ARCH

growpart /dev/xvda 4
lvextend -l +50%FREE /dev/RootVG/rootVol
lvextend -l +50%FREE /dev/RootVG/varVol
xfs_growfs /
xfs_growfs /var

# sudo dnf -y install dnf-plugins-core
# sudo dnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
# sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
# systemctl start docker
# systemctl enable docker
# usermod -aG docker ec2-user

# #kubectl
# curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.32.0/2024-12-20/bin/linux/amd64/kubectl
# chmod +x ./kubectl
# mv kubectl /usr/local/bin/kubectl

# #eksctl
# curl -sLO "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_$PLATFORM.tar.gz"
# tar -xzf eksctl_$PLATFORM.tar.gz -C /tmp && rm eksctl_$PLATFORM.tar.gz
# mv /tmp/eksctl /usr/local/bin