<h1>Hands-On Lab Clean-Up</h1>

<h3>Delete the Resource Group to Remove All Created Cloud Services</h3>
<p>
<ol>
<li>Sign into an Azure CLI by navigating to <a href="https://shell.azure.com" target="_blank">https://shell.azure.com</a>
<p>
<li>Run the following script in the Azure Shell CLI:
<br><sub>This will take about 5 minutes to complete</sub>
<pre><code class="lang-azurecli">
Remove-AzResourceGroup -Name {YourIoTHubName}
</pre></code>
