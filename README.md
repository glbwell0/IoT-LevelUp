# IoT-LevelUp
<h1>Prerequisites</h1>

<h3>Create a new Resource Group with an IoT Hub</h3>
<ol>
<li>Sign into an Azure CLI by navigating to <a href="https://shell.azure.com" target="_blank">https://shell.azure.com</a>
<li>Run the following command to create a new resource group:<p>
<pre><code class="lang-azurecli">az group create --name {your resource group name} --location eastus
</code></pre><p>
<li>Run the following command to create an IoT hub:<p>
<pre><code class="lang-azurecli">az iot hub create --name {your iot hub name} --resource-group {your resource group name} --sku S1 
</code></pre>
</ol>  
<h3>Verify the Microsoft.EventGrid resource is registered</h3>
<i>We'll need this when triggering events from your IoT Hub</i><p>
<ol>
<li>Run the following command to create an IoT hub:<p>
<pre><code class="lang-azurecli">az provider register --namespace 'Microsoft.EventGrid'
</code></pre>
</ol>
<p>

<h2>Use Event Grid to Alert for IoT Hub Events</h2>
