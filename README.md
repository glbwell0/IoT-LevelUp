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
That's all -You're ready to go!!!<p>

<h1>Hands-On Lab</h1>

<h2>Use Event Grid to Alert for IoT Hub Events</h2>
<table>
<tr>
<td width="20%" valign="top"><br>This exercise will use Azure Event Grid to trigger an email to notify someone every time an IoT device connects or disconnects.</td>
<td>

![EventGridDiagram](./images/EventGridDiagram.png) 

</td>
</tr>
</table>
<p>
<h3>Create a Logic App That Sends an Email</h3>
<ol>
  <li>In the Azure portal, click <b>Create a Resource</b> and search for <b>Logic App</b>
  <li>Click the <b>Create</b> button
  <li>Enter the following details:
    <ul>
      <li><b>Resource Group:</b>  Select the desired resource group
      <li><b>Logic App Name:</b>  IoTDeviceConnectionAlert-<i>your initials</i>  (this must be a unique name across Azure)
      <li><b>Region:</b>  East US (or your preferred region)
      <li><b>Plan Type:</b> Consumption
    </ul>
  <li>Click <b>Review + Create</b>, and then click <b>Create</b>
  <li>Once the resource is created, select <b>Go to resource</b>
  <li>In the left side panel, select <b>Logic app designer</b>
  <li>Under <b>Start with a common trigger</b> click <b>When a HTTP request is received</b>
  <li>Click the <b>Use sample payload to generate schema</b> link and enter the following:
    <pre><code class="lang-azurecli" title="JSON">
[{  
 "id": "f6bbf8f4-d365-520d-a878-17bf7238abd8",
 "topic": "/SUBSCRIPTIONS/<azure subscription ID>/RESOURCEGROUPS/<resource group name>/PROVIDERS/MICROSOFT.DEVICES/IOTHUBS/<hub name>",
 "subject": "devices/LogicAppTestDevice",
 "eventType": "Microsoft.Devices.DeviceConnected",
 "eventTime": "2018-06-02T19:17:44.4383997Z",
 "data": {
     "deviceConnectionStateEventInfo": {
       "sequenceNumber":
         "000000000000000001D4132452F67CE200000002000000000000000000000001"
     },
   "hubName": "<hub name>",
   "deviceId": "LogicAppTestDevice",
   "moduleId" : "DeviceModuleID"
 }, 
 "dataVersion": "1",
 "metadataVersion": "1"
}]
 </code></pre>
 <li>Select <b>+ New Step</b>. A window appears, prompting you to <b>Choose an action</b>
 <li>Search for <b>Outlook</b> and select <b>Outlook.com</b>
 <li>Select the <b>Send an email (V2)</b> action.  This will open a window to login to your account
 <li>Select <b>Sign in</b> and sign in to your email account. Select <b>Yes</b> to let the app access your info
 <li>Build your email template with the following:
 <ul>
   <li><b>To:</b> Enter your email address (or an account where you want the notification sent)
   <li><b>Subject:</b>
   <ul>
     <li>Type <b>IoT Device Connection Alert:</b>, then click the <b>Add dynamic content</b> link
     <li>Search for <b>eventType</b> and select it
   </ul>
 <li><b>Body:</b> Write the text for your email. Select JSON properties from the selector tool to include dynamic content based on event data. If you can't see the Dynamic content, select the <b>Add dynamic content</b> hyperlink under the <b>Body</b> text box. If it doesn't show you the fields you want, click more in the Dynamic content screen to include the fields from the previous action.
 
 ![AlertEmailBody](https://github.com/glbwell0/IoT-LevelUp/blob/9d8a0ce9ef44422b248a6b871bee4861a5c0f378/IoTDeviceConnectionStateAlert-Body.png)
 
   

 
</ol>
