# IoT LevelUp

let "randomIdentifier=$RANDOM*$RANDOM"
location="East US"
resourceGroup="LevelUp-$randomIdentifier"
iotHubName="LevelUp-$randomIdentifier"
deviceID="RaspberryPi"

az provider register --namespace 'Microsoft.EventGrid'
az group create --name $resourceGroup --location "$location"
az iot hub create --name $iotHubName --resource-group $resourceGroup --sku S1 
az iot hub device-identity create -n $iotHubName -d RaspberryPi

iotHubConnectionString = (az iot hub connection-string show -n $iotHubName --policy-name iothubowner)
iotDeviceConnectionString = (az iot hub device-identity connection-string show --hub-name $iotHubName --device-id RaspberryPi)

echo "Resource Group: $resourceGroup"
echo "IoT Hub Name: $iotHubName"
echo "IoT Hub Connection String: $iotHubConnectionString"
echo "IoT Device Connection String: $iotDeviceConnectionString"
