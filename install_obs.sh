j kubevela
go run ./vela-templates/gen_addons.go --addons-path=./vela-templates/addons --store-path=./charts/vela-core/templates/addons
j workspace
source create_cluster.sh
kubectl wait --for=condition=Ready pod -l app.kubernetes.io/name=vela-core,app.kubernetes.io/instance=kubevela -n vela-system --timeout=600s
vela addon enable observability alertmanager-pvc-enabled=false server-pvc-enabled=false ingress-domain=example.com
