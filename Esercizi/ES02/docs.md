```sh
cat ~/.bashrc
nano ~/.bashrc
# aggiungere la password a KUBE_VAR

source ~/.bashrc
oc login $API_SERVER --username kubeadmin --password $KUBE_VAR
```