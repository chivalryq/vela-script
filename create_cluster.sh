#cancel proxy
nop
kind delete cluster
kind create cluster --image kindest/node:v1.18.15@sha256:5c1b980c4d0e0e8e7eb9f36f7df525d079a96169c8a8f20d8bd108c0d0889cc4
#helm repo add kubevela https://kubevelacharts.oss-accelerate.aliyuncs.com/core
#helm repo update
echo "installing charts from local"
helm install --create-namespace -n vela-system kubevela ~/repo/kubevela/charts/vela-core  --set admissionWebhooks.enabled=true --set replicaCount=1  --wait

#setproxy
