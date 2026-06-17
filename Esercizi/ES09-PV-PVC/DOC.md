# Guida per creazionedi un PV e PVC sfruttando storage di azure

Approccio IaC

```sh

# Creazione del gruppo di risorse in Azure
export RESOUCE_GROUP=CORSO-DGS00035-OpenShift-storage
export LOCATION=northeurope
az group create --name $RESOUCE_GROUP --location $LOCATION

# Creazione storage
export STORAGE_ACCOUNT=storagearodemo

az storage account create \
    --name $STORAGE_ACCOUNT \
    --resource-group $RESOUCE_GROUP \
    --location $LOCATION \
    --sku Standard_LRS \
    --kind StorageV2 \
    --enable-large-file-share

# Recupero chiave Storage
export STORAGE_KEY=(az storage account keys list \
    --account-name $STORAGE_ACCOUNT \
    --resource-group $RESOUCE_GROUP \
    --query "[0].value" \
    -o tsv)

# Creazione File Share
export SHARE_NAME=appshare
az storage share-rm create \
    --resource-group $RESOUCE_GROUP \
    --storage-account $STORAGE_ACCOUNT \
    --name $SHARE_NAME \
    --quota 10

```

---

Comandi Utili:

```sh
# Lista delle region
az account list-locations -o table

```

