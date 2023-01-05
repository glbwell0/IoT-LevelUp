<h1>Prerequisites</h1>

<h3>Create a new Resource Group with an IoT Hub</h3>
🚩<b><i>Open NotePad or a similiar application to record details that you will reference during the lab</b></i>🚩
<p>
<ol>
<li>Sign into an Azure CLI by navigating to <a href="https://shell.azure.com" target="_blank">https://shell.azure.com</a>
<p>
<li>Run the following script in the Azure Shell CLI:
<br><sub>This will take about 5 minutes to complete</sub>
<pre><code class="lang-azurecli">
# IoT LevelUp
az extension update --name azure-iot
az provider register --namespace 'Microsoft.EventGrid'

let "randomIdentifier=$RANDOM*$RANDOM"
location="East US"
resourceGroup="IoT-LevelUp-$randomIdentifier"
dpsName="IoT-LevelUp-DPS-$randomIdentifier"
iotHubName="IoT-LevelUp-Hub-$randomIdentifier"

az group create --name $resourceGroup --location "$location"

az iot dps create --name $dpsName --resource-group $resourceGroup
SCOPEID=$(az iot dps show --name $dpsName --query "properties.idScope")

az iot hub create --name $iotHubName --resource-group $resourceGroup --sku S1 
CONNECTIONSTRING=$(az iot hub connection-string show -n $iotHubName --policy-name iothubowner --key-type primary --query "connectionString")

echo " "
echo "--- Copy the Following Lines to NotePad for Reference Throughout the Lab ---"
echo "Resource Group Name: $resourceGroup"
echo "IoT Hub Connection String: $CONNECTIONSTRING"
echo "RaspberryPi Connection String: "
echo "DPS Scope ID: $SCOPEID"
echo "DPS Primary Key: "
</pre></code>
  <li>Copy the last 5 lines that include the <b>Resource Group Name</b>, <b>DPS Scope ID</b>, and <b>IoT Hub Connection String</b> for later reference
</ol>
  <br>
<h3>Install Visual Studio Code</h3>
<ol>
  <li><i>Ctrl</i>-Click <a href="https://code.visualstudio.com/Download">here</a> to navigate to the Visual Studio Code download page
  <li>Select the blue button of the appropriate operating system (i.e. Windows)
  <li>Open the downloaded setup file from your <b>Downloads</b> folder
  <li>Walk through the setup wizard, selecting all the default options
</ol>
<br>
<h3>Install the Azure IoT Explorer</h3>
<ol>
<li>Click <a href="https://github.com/Azure/azure-iot-explorer/releases/download/v0.15.4/Azure.IoT.Explorer.Preview.0.15.4.msi">here</a> to download and install.
<li>Launch the application if it does not automatically start
<li>Click the <b>+ Add Connection</b> button
<li>Paste your <b>IoT Hub's Connection String</b> and click the <b>Save</b> button
<li>Note that there are no deviced listed
</ol>
<br>
<h3>Create a Free Outlook Email Account</h3>
<ol>
  <li>Using a browser, open a <b>New InPrivate</b> window
  <li>Navitage to <a href="https://outlook.com">https://outlook.com</a>
  <li>Click the <b>Create Free Account</b> button at the bottom of the window
  <li>Enter a unique email address and select the <b>@outlook.com</b> domain
  <li>Click the <b>Next</b> button and create a valid password
  <li>Uncheck the option for <b><i>Tips and Offers</b></i>
  <li>Record your <b>Email Address</b> and <b>Password</b> for later reference
  <li>Click the <b>Next</b> button
  <li>Enter your <b>First</b> and <b>Last Name</b>
  <li>Click the <b>Next</b> button
  <li>Select your <b>Country/Region</b> and enter your <b>Birthday</b>
  <li>Click the <b>Next</b> button and solve the puzzle to confirm your human
</ol>
<p>
That's all -You're ready to go!!! Lets start with the first lab<p>
  <a href="ConfigureDPS.md"><b>Configure the Device Provisioning Service (DPS)</b></a><p>
  <i>or...</i><p>
  <a href="README.md"><b>Return to the Main Page</b></a>
