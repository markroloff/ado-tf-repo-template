echo "=== AzureRM Backend Config ==="
echo "Resource Group Name: "$BACKEND_RESOURCE_GROUP_NAME
echo "Storage Account Name: "$BACKEND_STORAGE_ACCOUNT_NAME
echo "Storage Account Container Name: "$BACKEND_STORAGE_CONTAINER_NAME
echo "Key: "$TF_BACKEND_KEY

terraform init \
  -bakend-config="resource_group_name=$BACKEND_RESOURCE_GROUP_NAME" \
  -bakend-config="storage_account_name=$BACKEND_STORAGE_ACCOUNT_NAME" \
  -bakend-config="container_name=$BACKEND_STORAGE_CONTAINER_NAME" \
  -bakend-config="key=$TF_BACKEND_KEY"

terraform $1 $2 $3
