KUBEVELA_REPO=~/repo/kubevela
alias uk=helm uninstall kubevela -n vela-system

# install kubevela
function ik(){
        pushd $KUBEVELA_REPO
        helm install  --namespace=vela-system kubevela ./charts/vela-core
        popd
}

# "n" means no pod and webhook running and you can debug controller.
function ikn(){
        pushd $KUBEVELA_REPO
        helm install  --namespace=vela-system kubevela ./charts/vela-core --set admissionWebhooks.enabled=false --set replicaCount=0
        popd
}
