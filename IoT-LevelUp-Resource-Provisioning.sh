# IoT LevelUp
az extension update --name azure-iot
az provider register --namespace 'Microsoft.EventGrid'

let "randomIdentifier=$RANDOM*$RANDOM"
location="East US"
resourceGroup="LevelUp-$randomIdentifier"
iotHubName="LevelUp-$randomIdentifier"
deviceID="RaspberryPi"

az group create --name $resourceGroup --location "$location"
az iot hub create --name $iotHubName --resource-group $resourceGroup --sku S1 
az iot hub device-identity create -n $iotHubName -d RaspberryPi

echo "Resource Group Name: $resourceGroup"
az iot hub connection-string show -n $iotHubName --policy-name iothubowner
az iot hub device-identity connection-string show --hub-name $iotHubName --device-id RaspberryPi
