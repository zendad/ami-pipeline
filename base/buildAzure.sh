export RHEL=7.4_HVM-20180122
export RHEL_MAJOR=74
export KERNEL=3.10.0-693.17.1.el7
export SUBSCRIPTION_ID=$(az account show | jq -r '.id')
export LOCATION=uksouth
export STORAGE_ACCOUNT=$(az storage account list | jq -r '.[] | .name' | grep images)
export RESOURCE_GROUP=$(az group list | jq -r '.[] | .name' | grep packer)
export CLIENT_ID=$(az ad app list | jq '.[] | select(.displayName == "packer") | .appId')

packer build --only=azure-arm packer.json