ls
cd /mnt/
ls
cd
ls
cd /mnt/nfs
exit
htop
apt-get update
ls
cd /mnt/
ls
cd ..
;s
cd
ls
cd /mnt/
cd
ls
exit
cat /etc/sysconfig/selinux | grep SELINUX=
sudo sed -i --follow-symlinks 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/sysconfig/selinux
cat /etc/sysconfig/selinux | grep SELINUX=
sudo setenforce 0
sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab
sudo swapoff -a
sudo modprobe br_netfilter
lsmod | grep br_netfilter
echo '1' | sudo tee /proc/sys/net/bridge/bridge-nf-call-iptables
sudo sysctl -a | grep net.bridge.bridge-nf-call-iptables
sudo yum -y remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine buildah
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo containerd config default | sudo tee /etc/containerd/config.toml
sudo sed -i 's/SystemdCgroup = false/SystemdCgroup = true/g' /etc/containerd/config.toml
sudo systemctl start docker
sudo systemctl enable docker
cat <<EOF | sudo tee /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-\$basearch
enabled=1
gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
exclude=kubelet kubeadm kubectl
EOF

sudo yum install -y kubelet kubeadm kubectl --disableexcludes=kubernetes
sudo systemctl enable kubelet
sudo systemctl start kubelet
sudo swapoff -a
sudo dnf install -y nfs-utils
sudo systemctl enable nfs-server rpcbind
sudo systemctl start nfs-server rpcbind
sudo kubeadm init --control-plane-endpoint="172.31.37.224:6443" --upload-certs --apiserver-advertise-address=172.31.37.224
mkdir -p $HOME/.kube
  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
  sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml
kubectl get nodes
kubectl get nodes -w
sudo nano backend-deployment-scheduler.yaml
sudo yum install nano
sudo nano backend-deployment-scheduler.yaml
sudo nano backend-deployment.yaml
sudo nano backend-kubejs-deployment.yaml
sudo nano backend-kubejs-pv-pvc.yaml
sudo nano backend-pv-pvc.yaml
sudo nano backend-service.yaml
sudo nano backend-nodeport.yaml
sudo nano db-pv-pvc.yaml
sudo nano kube-python-deployment.yaml
sudo nano kube-python-service.yaml
sudo nano manager-pv-pvc.yaml
sudo nano mongodb-deployment.yaml
sudo nano mongodb-service.yaml
sudo nano nsq-deployment.yaml
sudo nano nsq-pv-pvc.yaml
sudo nano nsq-service.yaml
sudo nano pdfconverter-deployment.yaml
sudo nano pdfconverter_service_clusterip.yaml
sudo nano pv-manager-binding.yaml
sudo nano pv-manager-clusterrole.yaml
sudo nano role.yaml
sudo nano rolebinding.yaml
sudo nano sch-pv-pvc.yaml
sudo nano screenshots-pv-pvc.yaml
sudo nano sentiment_deployment.yaml
sudo nano setiment_service_clusterIp.yaml
sudo nano ssl-pv-pvc.yaml
kubectl apply -f .
kubectl get pods -w
sudo nano backend-kubejs-deployment.yaml 
kubectl apply -f backend-kubejs-deployment.yaml 
kubectl get pods -w
kubectl describe pod nsq-deployment-548c4656b5-bnrkq
kubectl get pods -w
kubectl describe pod mongodb-deployment-64b9c6c644-56hdq 
kubectl get pods -w
kubectl logs mongodb-deployment-64b9c6c644-56hdq
kubectl describe pod mongodb-deployment-64b9c6c644-56hdq
kubectl get pods -w
kubectl logs backend-kubejs-deployment-64b9f69ccd-knk9k 
sudo nano backend-kubejs-deployment.yaml 
sudo nano backend-kubejs-pv-pvc.yaml 
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install prometheus-stack prometheus-community/kube-prometheus-stack   --set prometheus.service.type=NodePort   --set grafana.service.type=NodePort
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install prometheus-stack prometheus-community/kube-prometheus-stack   --set prometheus.service.type=NodePort   --set grafana.service.type=NodePort
kubectl get svc
kubectl restart deployments backend-deployment backend-kubejs-deployment backend-deployment-scheduler
kubectl get pods -w
kubectl get pv
kubectl get pvc
kubectl delete pvc backend-code-pvc   backend-kubejs-code-pvc 
kubectl delete deployments backend-deployment backend-kubejs-deployment
kubectl get deployments
kubectl delete pvc backend-code-pvc   backend-kubejs-code-pvc 
kubectl delete pvc backend-code-pv   backend-kubejs-code-pv
kubectl delete pv
kubectl get pv
kubectl delete pv backend-code-pv  backend-kubejs-code-pv
kubectl get pvc
kubectl delete pvc backend-code-pvc 
kubectl get pods
kubectl delete deployment backend-deployment-scheduler
kubectl delete pvc backend-code-pvc 
kubectl delete pv backend-code-pv  backend-kubejs-code-pv
sudo nano backend-pv-pvc.yaml 
kubectl apply -f  backend-pv-pvc.yaml 
kubectl get pv
sudo nano backend-kubejs-pv-pvc.yaml 
kubectl apply -f backend-kubejs-pv-pvc.yaml 
kubectl get pv
sudo nano backend-kubejs-pv-pvc.yaml 
kubectl get pv
kubectl apply -f backend-deployment.yaml 
kubectl apply -f backend-deployment-scheduler.yaml 
kubectl apply -f backend-kubejs-deployment.yaml 
kubectl get pods -w
kubectl get svc
ls
kubectl apply -f backend-nodeport.yaml 
kubectl get svc
sudo nano backend-nodeport.yaml 
kubectl apply -f backend-nodeport.yaml 
kubectl get svc
scp root@umbrasys.ddns.net:~/dump.archive .
kubectl get pods | grep mongo
kubectl cp mongodb-deployment-64b9c6c644-56hdq:/dump.archive dump.archive
kubectl cp dump.archive mongodb-deployment-64b9c6c644-56hdq:/dump.archive
kubectl exec -it mongodb-deployment-64b9c6c644-56hdq -- /bin/bash
kubectl get pods | grep backend
kubectl logs backend-kubejs-deployment-64b9f69ccd-24rwr
kubectl delete deployment backend-kubejs-deployment
kubectl apply -f backend-kubejs-deployment.yaml 
kubectl get pods -w
kubectl logs backend-kubejs-deployment-64b9f69ccd-x2b4r
kubectl exec -it backend-kubejs-deployment-64b9f69ccd-x2b4r -- /bin/bash
kubectl delete deployment backend-kubejs-deployment
kubectl get pv | grep backend
kubectl get pods | grep nsq
kubectl get svc | grep nsq
curl http://10.110.245.189:4151/stats?topic=facebook_controlling
kubectl delete deployment backend-deployment-scheduler; kubectl apply -f backend-deployment-scheduler.yaml 
kubectl get pods | grep backend
kubectl logs backend-deployment-scheduler-c5fb75f48-45hfn
watch "kubectl get pods | grep "facebook" | wc -l;kubectl get pods | grep "facebook" | grep "Running" | wc -l; kubectl get pods | grep "facebook" | grep "Pending"| wc -l; curl http://10.110.245.189:4151/stats?topic=facebook_controlling"
kubectl get pods | grep backend
kubectl logs backend-deployment-scheduler-6c7c8447cf-bvg9z
kubectl get pods | grep backend
kubectl logs backend-deployment-85dc98b985-z2kfw
kubectl logs backend-deployment-85dc98b985-z2kfw | grep python
kubectl get pods | grep facebook
kubectl exec -it facebook-controlling-65b24dd9c41dc8001d322894-b76544656-9xxlg -- /bin/bash
watch "kubectl get pods | grep "facebook" | wc -l;kubectl get pods | grep "facebook" | grep "Running" | wc -l; kubectl get pods | grep "facebook" | grep "Pending"| wc -l; curl http://10.110.245.189:4151/stats?topic=facebook_controlling"
kubectl get pods | grep face
kubectl exec -it facebook-controlling-65b24dd9c41dc8001d3228cc-58b6884cf6-b47s5 -- /bin/bash
watch "kubectl get pods | grep "facebook" | wc -l;kubectl get pods | grep "facebook" | grep "Running" | wc -l; kubectl get pods | grep "facebook" | grep "Pending"| wc -l; curl http://10.110.245.189:4151/stats?topic=facebook_controlling"
kubect get pods | grep face
kubectl get pods | grep face
kubectl exec -it facebook-controlling-65b24dd9c41dc8001d3228fc-cb798b8fb-vbxkc -- /bin/bash
watch "kubectl get pods | grep "facebook" | wc -l;kubectl get pods | grep "facebook" | grep "Running" | wc -l; kubectl get pods | grep "facebook" | grep "Pending"| wc -l; curl http://10.110.245.189:4151/stats?topic=facebook_controlling"
kubectl exec -it facebook-controlling-65b24dd9c41dc8001d3228fc-cb798b8fb-vbxkc -- /bin/bash
watch "kubectl get pods | grep "facebook" | wc -l;kubectl get pods | grep "facebook" | grep "Running" | wc -l; kubectl get pods | grep "facebook" | grep "Pending"| wc -l; curl http://10.110.245.189:4151/stats?topic=facebook_controlling"
kubectl get pods | grep backend
kubectl get pods | grep sche
kubectl logs backend-deployment-scheduler-58776dc4c4-67b5l | grep 65b24deec41dc8001d3285ea
kubectl logs backend-deployment-85dc98b985-z2kfw | grep 65b24deec41dc8001d3285ea
kubectl logs backend-deployment-85dc98b985-z2kfw | grep 65b24deec41dc8001d3285ea|grep python
watch "kubectl get pods | grep "facebook" | wc -l;kubectl get pods | grep "facebook" | grep "Running" | wc -l; kubectl get pods | grep "facebook" | grep "Pending"| wc -l; curl http://10.110.245.189:4151/stats?topic=facebook_controlling"
watch "kubectl get pods | grep "facebook" | wc -l;kubectl get pods | grep "facebook" | grep "Running" | wc -l; kubectl get pods | grep "facebook" | grep "Pending"| wc -l; kubectl get pods | grep "facebook" | grep Terminating| wc -l;curl http://10.110.245.189:4151/stats?topic=facebook_controlling"
kubectl get pods | grep face
watch "kubectl get pods | grep "facebook" | wc -l;kubectl get pods | grep "facebook" | grep "Running" | wc -l; kubectl get pods | grep "facebook" | grep "Pending"| wc -l; kubectl get pods | grep "facebook" | grep Terminating| wc -l;curl http://10.110.245.189:4151/stats?topic=facebook_controlling"
kubectl get pods | grep 65b24ddec41dc8001d323c4d
watch "kubectl get pods | grep "facebook" | wc -l;kubectl get pods | grep "facebook" | grep "Running" | wc -l; kubectl get pods | grep "facebook" | grep "Pending"| wc -l; kubectl get pods | grep "facebook" | grep Terminating| wc -l;curl http://10.110.245.189:4151/stats?topic=facebook_controlling"
kubectl get pods | grep face

kubectl get pods -w
kubectl get pods -w | grep face
kubectl get pods -w 
kubectl describe pod cebook-controlling-65b24dd9c41dc8001d322894-fb95dc968-phm5s~
kubectl describe pod facebook-controlling-65b24dd9c41dc8001d322894-fb95dc968-phm5s~
kubectl describe pod facebook-controlling-65b24dd9c41dc8001d322894-fb95dc968-phm5s
kubectl get pods -w 
kubectl get pods -w | grep facebook
 kubectl pods  logs facebook_65b24dd9c41dc8001d3228cc
 kubectl pod  logs facebook_65b24dd9c41dc8001d3228cc
 kubectl pods  logs facebook_65b24dd9c41dc8001d3228cc
kubectl exec -it facebook-controlling-65b24dd9c41dc8001d3228fc-cb798b8fb-vbxkc -- /bin/bash
kubectl get pods -w
kubectl get pods -w | grep facebook
kubectl exec -it facebook-controlling-65b24de7c41dc8001d326729-6cfd65f684-pm6t5  -- /bin/bash
kubectl get pods -w | grep facebook
history | watch
history | grep watch
watch "kubectl get pods | grep "facebook" | wc -l;kubectl get pods | grep "facebook" | grep "Running" | wc -l; kubectl get pods | grep "facebook" | grep "Pending"| wc -l; curl http://10.110.245.189:4151/stats?topic=facebook_controlling"
kubectl get pods -w | grep Ter
LS
ls
kubectl get pods -w 
kubectl get pods -w | grep Tre
kubectl get pods -w | grep Ter
clear
kubectl get pods -w | grep Ter
kubectl get pods -w 
kubectl get pvc -w
kubectl get pvc 
kubectl get pvc | wc -l
watch "kubectl get pvc | wc -l"
kubectl get pvc -w
kubectl get pvc -w | grep Ter
watch "kubectl get pvc | wc -l"
kubectl get pods -w
kubectl describe pod facebook-controlling-65b24dd9c41dc8001d322894-fb95dc968-phm5s
kubectl get pv
kubectl describe pv code-pv-65b24dd9c41dc8001d322894
sudo nano kube-python-deployment.yaml 
kubectl get pods
kubectl exec -it kube-python-deployment-6484d4578b-xj9m6   -- /bin/bash
sudo nano kube-python-deployment.yaml 
kubectl apply -f kube-python-deployment.yaml 
kubectl get pods -w
kubectl get deployments --no-headers=true | awk '/facebook/{print $1}' | xargs kubectl delete deployment; 
kubectl get svc --no-headers=true | awk '/facebook/{print $1}' | xargs kubectl delete svc; 
kubectl get pvc --no-headers=true | awk '/^profile-pvc|^logs-pvc|^code-pvc/{print $1}' | xargs kubectl delete pvc; 
kubectl get pv --no-headers=true | awk '/^profile-pv|^logs-pv|^code-pv/{print $1}' | xargs kubectl delete pv
kubectl get pods -w
kubectl rollout restart deployment backend-deployment-scheduler
kubectl get pods -w
kubectl get pv
kubectl describe pv code-pv-65b24dd9c41dc8001d322894 
kubectl get pv
kubectl get pods -w
kubectl logs facebook-controlling-65b24dd9c41dc8001d322894-b76544656-9xxlg
kubectl get pods -w
kubectl exec -it facebook-controlling-65b24dd9c41dc8001d3228a4-77fc768c68-fbqnl -- /bin/bash
kubectl get deployment
kubectl get svc
kubectl apply -f backend-service.yaml 
kubectl get svc
kubectl rollout restart deployment backend-deployment-scheduler
kubectl get pods -w
kubectl get deployments --no-headers=true | awk '/facebook/{print $1}' | xargs kubectl delete deployment; 
kubectl get svc --no-headers=true | awk '/facebook/{print $1}' | xargs kubectl delete svc; 
kubectl get pvc --no-headers=true | awk '/^profile-pvc|^logs-pvc|^code-pvc/{print $1}' | xargs kubectl delete pvc; 
kubectl get pv --no-headers=true | awk '/^profile-pv|^logs-pv|^code-pv/{print $1}' | xargs kubectl delete pv
kubectl get deployments --no-headers=true | awk '/facebook/{print $1}' | xargs kubectl delete deployment; 
kubectl get svc --no-headers=true | awk '/facebook/{print $1}' | xargs kubectl delete svc; 
kubectl get pvc --no-headers=true | awk '/^profile-pvc|^logs-pvc|^code-pvc/{print $1}' | xargs kubectl delete pvc; 
kubectl get pv --no-headers=true | awk '/^profile-pv|^logs-pv|^code-pv/{print $1}' | xargs kubectl delete pv
kubectl get deployments --no-headers=true | awk '/facebook/{print $1}' | xargs kubectl delete deployment; 
kubectl get svc --no-headers=true | awk '/facebook/{print $1}' | xargs kubectl delete svc; 
kubectl get pvc --no-headers=true | awk '/^profile-pvc|^logs-pvc|^code-pvc/{print $1}' | xargs kubectl delete pvc; 
kubectl get pv --no-headers=true | awk '/^profile-pv|^logs-pv|^code-pv/{print $1}' | xargs kubectl delete pv
kubectl get pods -w
kubectl get svc
kubectl get pods -w
kubectl get svc
kubectl get deployments --no-headers=true | awk '/facebook/{print $1}' | xargs kubectl delete deployment; 
kubectl get svc --no-headers=true | awk '/facebook/{print $1}' | xargs kubectl delete svc; 
kubectl get pvc --no-headers=true | awk '/^profile-pvc|^logs-pvc|^code-pvc/{print $1}' | xargs kubectl delete pvc; 
kubectl get pv --no-headers=true | awk '/^profile-pv|^logs-pv|^code-pv/{print $1}' | xargs kubectl delete pv
kubectl get deployments --no-headers=true | awk '/facebook/{print $1}' | xargs kubectl delete deployment; 
kubectl get svc --no-headers=true | awk '/facebook/{print $1}' | xargs kubectl delete svc; 
kubectl get pvc --no-headers=true | awk '/^profile-pvc|^logs-pvc|^code-pvc/{print $1}' | xargs kubectl delete pvc; 
kubectl get pv --no-headers=true | awk '/^profile-pv|^logs-pv|^code-pv/{print $1}' | xargs kubectl delete pv
sudo nano kube-python-deployment.yaml 
kubectl apply -f kube-python-deployment.yaml 
kubectl get pods -w
kubectl get deployments --no-headers=true | awk '/facebook/{print $1}' | xargs kubectl delete deployment; 
kubectl get svc --no-headers=true | awk '/facebook/{print $1}' | xargs kubectl delete svc; 
kubectl get pvc --no-headers=true | awk '/^profile-pvc|^logs-pvc|^code-pvc/{print $1}' | xargs kubectl delete pvc; 
kubectl get pv --no-headers=true | awk '/^profile-pv|^logs-pv|^code-pv/{print $1}' | xargs kubectl delete pv
kubectl get deployments --no-headers=true | awk '/facebook/{print $1}' | xargs kubectl delete deployment; 
kubectl get svc --no-headers=true | awk '/facebook/{print $1}' | xargs kubectl delete svc; 
kubectl get pvc --no-headers=true | awk '/^profile-pvc|^logs-pvc|^code-pvc/{print $1}' | xargs kubectl delete pvc; 
kubectl get pv --no-headers=true | awk '/^profile-pv|^logs-pv|^code-pv/{print $1}' | xargs kubectl delete pv
kubectl get pods -w
kubectl delete deployment nsq-deployment
kubectl apply -f nsq-deployment.yaml 
kubectl get pods -w
kubectl get pods -w | grep "facebook" | grep "Running"; ubectl get pods -w | grep "facebook" | grep "Pending"
watch "kubectl get pods | grep "facebook" | grep "Running"; ubectl get pods -w | grep "facebook" | grep "Pending""
watch "kubectl get pods | grep "facebook" | grep "Running"| wc -l; ubectl get pods -w | grep "facebook" | grep "Pending| wc -l""
watch "kubectl get pods | grep "facebook" | grep "Running"| wc -l; kubectl get pods -w | grep "facebook" | grep "Pending| wc -l""
watch "kubectl get pods | grep "facebook" | grep "Running"| wc -l; kubectl get pods -w | grep "facebook" | grep "Pending"| wc -l
history | grep wc
watch "kubectl get pods | grep "facebook" | grep "Running"| wc -l; kubectl get pods -w | grep "facebook" | grep "Pending"| wc -l"
kubectl get pods -w
kubectl describe pod facebook-controlling-65b24de4c41dc8001d325b21-6485759fbb-gfgrv
kubectl get pods -w
kubectl get pods | grep "facebook"
kubectl get pods | grep "facebook" | wc -l
kubectl get pods | grep "facebook" | grep "Running" | wc -l
watch "kubectl get pods | grep "facebook" | grep "Running" | wc -l; kubectl get pods | grep "facebook" | grep "Pending" | wc -l"[B
kubectl get pods
kubectl describe pod facebook-controlling-65b24deec41dc8001d32860a-7d577bd67d-7nxl5
watch "kubectl get pods | grep "facebook" | grep "Running" | wc -l; kubectl get pods | grep "facebook" | grep "Pending" | wc -l"
kubectl get pv | grep 65b24deec41dc8001d32860a
kubectl describe pvc profile-pvc-65b24deec41dc8001d32860a
kubectl get storageclass
watch "kubectl get pods | grep "facebook" | grep "Running" | wc -l; kubectl get pods | grep "facebook" | grep "Pending" | wc -l"
kubectl get deployments --no-headers=true | awk '/facebook/{print $1}' | xargs kubectl delete deployment; 
kubectl get svc --no-headers=true | awk '/facebook/{print $1}' | xargs kubectl delete svc; 
kubectl get pv | wc -l
kubectl get pvc | wc -l
kubectl get pvc | grep Bound | wc -l
kubectl get svc --no-headers=true | awk '/facebook/{print $1}' | xargs kubectl delete svc; 
kubectl get deployments --no-headers=true | awk '/facebook/{print $1}' | xargs kubectl delete deployment; 
sudo systemctl restart kubelet
kubectl get pvc | grep Bound | wc -l
kubectl get pv | grep Bound | wc -l
kubectl get pvc | grep Bound | wc -l
sudo systemctl restart kubelet
kubectl get pvc | grep Bound | wc -l
watch "kubectl get pvc | grep Bound | wc -l"
watch "kubectl get pvc | grep Bound | wc -l; kubectl get pv | grep Bound | wc -l"
sudo systemctl restart kubelet
watch "kubectl get pvc | grep Bound | wc -l; kubectl get pv | grep Bound | wc -l"
kubectl get pods
watch "kubectl get pvc | grep Bound | wc -l; kubectl get pv | grep Bound | wc -l"
sudo systemctl restart kubelet
watch "kubectl get pvc | grep Bound | wc -l; kubectl get pv | grep Bound | wc -l"
kubectl get pv | wc -l
kubectl get pvc | wc -l
watch "kubectl get pvc | grep Bound | wc -l; kubectl get pv | grep Bound | wc -l"
kubectl get pvc | grep Available
kubectl get pv | grep Available
history | grep wc
watch "kubectl get pods | grep "facebook" | grep "Running" | wc -l; kubectl get pods | grep "facebook" | grep "Pending" | wc -l"
history | grep restart
kubectl rollout restart deployment backend-deployment-scheduler
watch "kubectl get pods | grep "facebook" | grep "Running" | wc -l; kubectl get pods | grep "facebook" | grep "Pending" | wc -l"
kubectl get pvc | grep 65b24dd5c41dc8001d32139c
watch "kubectl get pods | grep "facebook" | grep "Running" | wc -l; kubectl get pods | grep "facebook" | grep "Pending" | wc -l"
kubectl get pods
watch "kubectl get pods | grep "facebook" | grep "Running" | wc -l; kubectl get pods | grep "facebook" | grep "Pending" | wc -l"
kubectl get deployments
kubectl get deployments --no-headers=true | awk '/facebook/{print $1}' | xargs kubectl delete deployment; kubectl get svc --no-headers=true | awk '/facebook/{print $1}' | xargs kubectl delete svc; kubectl get pvc --no-headers=true | awk '/^profile-pvc|^logs-pvc|^code-pvc/{print $1}' | xargs kubectl delete pvc; 
watch "kubectl get pods | grep "facebook" | wc -l;kubectl get pods | grep "facebook" | grep "Running" | wc -l; kubectl get pods | grep "facebook" | grep "Pending"| wc -l; curl http://10.110.245.189:4151/stats?topic=facebook_controlling"
watch "kubectl get pods | grep "facebook" | wc -l;kubectl get pods | grep "facebook" | grep "Running" | wc -l; kubectl get pods | grep "facebook" | grep "Pending"| wc -l; ; kubectl get pods | grep "facebook" | grep "Termin"| wc -l;curl http://10.110.245.189:4151/stats?topic=facebook_controlling"
watch "kubectl get pods | grep "facebook" | wc -l;kubectl get pods | grep "facebook" | grep "Running" | wc -l; kubectl get pods | grep "facebook" | grep "Pending"| wc -l;  kubectl get pods | grep "facebook" | grep "Termin"| wc -l;curl http://10.110.245.189:4151/stats?topic=facebook_controlling"
watch "kubectl get pods | grep "facebook" | wc -l;kubectl get pods | grep "facebook" | grep "Running" | wc -l; kubectl get pods | grep "facebook" | grep "Pending"| wc -l; curl http://10.110.245.189:4151/stats?topic=facebook_controlling"
ls
watch "kubectl get pods | grep "facebook" | wc -l;kubectl get pods | grep "facebook" | grep "Running" | wc -l; kubectl get pods | grep "facebook" | grep "Pending"| wc -l; curl http://10.110.245.189:4151/stats?topic=facebook_controlling"
watch "kubectl get pv | wc -l
kubectl get pvc | wc -l
watch "kubectl get pvc | wc -l"
