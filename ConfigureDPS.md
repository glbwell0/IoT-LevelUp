<h1>Hands-On Lab</h1>

<h2>Configure the Device Provisioning Service (DPS)</h2>
<table>
<tr>
<td width="25%" valign="top"><br>This exercise will enable Azure's DPS to automatically register the device when its initially started.</td>
<td>

![EventGridDiagram](./images/DPS.png) 

</td>
</tr>
</table>
<p>
<h3>Configure the Device's Registration</h3>
<ol>
  <li>Open the Azure portal by navigating to <a href="https://portal.azure.com">https://portal.azure.com</a>
  <li>Locate the <b>Resource Group</b> that was created in the <b><a href="prerequisites.md">Prerequisites</a></b>
  <li>Open the <b>Device Provisioning Service (DPS)</b> with the name that starts <b>IoT-LevelUp-DPS</b>
  <li>Select the <b>Linked IoT Hubs</b> in the left panel and note that there are no associated IoT Hubs
  <li>Click the <b>+Add</b> at the top of the window
  <li>In the <b>IoT Hub</b> dropdown list, select the hub with the name that starts <b>IoT-LevelUp-Hub</b>
  <li>Click the <b>Save</b> button at the bottom of the panel
  <li>Select the <b>Manage Enrollments</b> in the left panel
  <li>Click the <b>+Add Individual Enrollment</b> at the top of the window
  <li>For <b>Mechanism</b>, select <b>Symmetric Key</b>
  <li>In the <bRegistration ID</b> textbox, enter <b>SimulatedDeviceRegistration</b>
  <li>In the <b>IoT Hub Device ID</b> textbox, enter <b>SimulatedDevice</b>
  <li>In the <b>Initial Device Twin State</b>, replace with the following:
<pre><code class="lang-azurecli">
{
  "tags": {},
  "properties": {
    "desired": {"IntervalFrequency": 5}
  }
}
</pre></code>
  <li>Click the <b>Save</b> button at the top of the window
</ol>
<p>
<h3>Get the Primary Key for the Device Enrollment</h3>
<ol>
  <li>Select the <b>Individual Enrollments</b> tab towards the top of the panel
  <li>Select the <b>SimulatedDeviceRegistration</b> registration
  <li>Copy the <b>Primary Key</b> by clicking the blue <b>Copy</b> icon to the right of the entry and save for later reference, titled <b>DPS Primary Key</b>
</ol>
<h3> Next Lab</h3>
Next Lab: <a href="RunDeviceCode.md">Simulate an IoT Device with C# Code</a>
   
