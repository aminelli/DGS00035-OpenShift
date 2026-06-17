# DOC



```sh
# Permette al ServiceAccount 'default' di eseguire container con qualsiasi UID
oc adm policy add-scc-to-user anyuid \
  -z default \
  -n prj-antonio-minelli

# Verifica
oc get rolebinding -n prj-antonio-minelli | grep anyuid

# Crea il Secret con credenziali MySQL
oc create secret generic mysql-secret \
  --from-literal=MYSQL_ROOT_PASSWORD=RootP@ss2024! \
  --from-literal=MYSQL_DATABASE=demoapp \
  --from-literal=MYSQL_USER=demouser \
  --from-literal=MYSQL_PASSWORD=DemoP@ss2024! \
  -n prj-antonio-minelli

# Verifica (valori base64)
oc get secret mysql-secret -n prj-antonio-minelli -o yaml

```