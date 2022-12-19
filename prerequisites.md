<h1>Prerequisites</h1>

<h3>Create a new Resource Group with an IoT Hub</h3>
<ol>
<li>Sign into an Azure CLI by navigating to <a href="https://shell.azure.com" target="_blank">https://shell.azure.com</a>
<p>
<li>Run the following command to create a new resource group:<br>
&emsp;<sub>If the message <b><i>"The command requires the extension azure-iot."</i></b> is displayed, select <b>Yes</b> to install.</sub>
<p>
  <pre><code class="lang-azurecli">az group create --name <i>{your resource group name}</i> --location eastus
</code></pre>
  <p>
<li>Run the following command to create an IoT hub:<p>
  <pre><code class="lang-azurecli">az iot hub create --name <i>{your iot hub name}</i> --resource-group <i>{your resource group name}</i> --sku S1 
</code></pre>
<li>Now copy the connection string for your hub with the following command:<br>
  &emsp;<sub>Paste the connection string for you to reference later</sub><p>
  <pre><code class="lang-azurecli">az iot hub connection-string show -n <i>{your iot hub name}</i> --policy-name iothubowner</code></pre>
</ol>
<br>
<h3>Install the Azure IoT Explorer</h3>
<ol>
<li>Click <a href="https://github.com/Azure/azure-iot-explorer/releases/download/v0.15.4/Azure.IoT.Explorer.Preview.0.15.4.msi">here</a> to download and install.
</ol>
<br>
<h3>Verify the Microsoft.EventGrid resource is registered</h3>
<i>We'll need this when triggering events from your IoT Hub</i><p>
<ol>
<li>Run the following command to create an IoT hub:<p>
<pre><code class="lang-azurecli">az provider register --namespace 'Microsoft.EventGrid'
</code></pre>
</ol>
<p>
That's all -You're ready to go!!!<p>
  <a href="README.md"><b>Return to the Hands-on Lab<b></a>
