<h1>Hands-On Lab</h1>

<h2>Demonstrate the IoT Hub with an online RaspberryPi Simulator</h2>
<table>
<tr>
<td width="25%" valign="top"><br>This exercise will use an online RaspberryPi simulator to send telemetry to an Azure IoT Hub.  This is a faster and simplier approach to demonstrate our IoT platform.</td>
<td>

![EventGridDiagram](./images/RaspberryPiSimulator.png) 

</td>
</tr>
</table>
<p>
<h3>Add a New IoT Device to the IoT Hub Manually</h3>
<ol>
  <li>Open the Azure portal by navigating to <a href="https://portal.azure.com">https://portal.azure.com</a>
  <li>Locate the <b>Resource Group</b> that was created in the <b><a href="prerequisites.md">Prerequisites</a></b>
  <li>Open the <b>IoT Hub</b> with the name that starts <b>IoT-LevelUp-Hub</b>
  <li>Under the <b>Device Management</b> section, select <b>Devices</b>
  <li>Click <b>+ Add Device</b> at the top of the window
  <li>For the <b>Device ID</b>, enter <b>RaspberryPi</b> and leave all other default settings
  <li>Click the <b>Save</b> at the bottom of the window
  <li>Click the <b>Refresh</b> button at the top of the window
  <li>Click the device titled <b>RaspberryPi</b>
  <li>Click the <b>Copy</b> icon after the <b>Primary Connection String</b> field
  <li>Paste the string in your NotePad, titled <b>RaspberryPi Connection String</b>
</ol>
<h3>Load Azure IoT Explorer to Monitor for Telemetry</h3>
<ol>
  <li>Launch the Azure IoT Explorer you installed from the <b><a href="prerequisites.md">Prerequisites</a></b>
  <li>Click the <b>Refresh</b> button at the top of the window
  <li>Click the device titled <b>RaspberryPi</b>
  <li>Select the <b>RaspberryPi</b> device
  <li>In panel on the left, select <b>Telemetry</b>
  <li>Click the <b>Start</b> button at the top<br>
    <sub>Note:  There will not be any telemetry appearing  ...yet.</sub>
</ol>
<h3>Send Telemetry with the RaspberryPi Simulator</h3>
<ol>
  <li><b><i>Ctrl</b></i>-Click <a href="https://azure-samples.github.io/raspberry-pi-web-simulator/#getstarted">here</a> to launch the <b>RaspberryPi Simulator</b>
  <li>Copy your <u>device</u> connection string into the code on line 15 between the single quotes<br>
<img src="./images/RaspSimConnString.png">
  <li>Click the <b>Run</b> link located just below the code window
  <li>Return to the <b>Azure IoT Explorer</b> and watch the telemetry stream
  <li>Stop monitoring the telemetry by clicking the <b>Stop</b> button at the top
  <li>Return to the <b>RaspberryPi Simulator</b> and click the <b>Stop</b> link located just below the code window
</ol>
<h3>Next Lab</h3>
Next Lab: <a href="EventGridAlert.md">Use Event Grid to Alert for IoT Hub Events</a>
