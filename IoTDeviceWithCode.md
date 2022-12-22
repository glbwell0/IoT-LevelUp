<h1>Hands-On Lab</h1>

<h2>Simulatate an IoT Device with C# Code</h2>
<table>
<tr>
<td width="25%" valign="top"><br>During this exercise you will develop code to simulate a device communicating with your Azure IoT Hub.</td>
<td>

![EventGridDiagram](./images/IoT_Code.png) 

</td>
</tr>
</table>
<p>
<h3>Get the Simulated Device Code from GitHub</h3>
<ol>
  <li>Open a command prompt by searching for <b>cmd</b>
  <li>Navigate to your root directory by typing <b>cd\</b>
  <li>Enter the following the download the sample code:
<pre><code class="lang-azurecli" title="JSON">
git clone https://github.com/glbwell0/IoT-LevelUp-Code
</pre></code>
  <li>Change to the working directory by entering the following:
<pre><code class="lang-azurecli" title="JSON">
cd\IoT-LevelUp-Code
</pre></code>
  <li>Add the Azure IoT Device SDK by entering the following 2 commands:
<pre><code class="lang-azurecli" title="JSON">
dotnet add . package Microsoft.Azure.Devices
dotnet restore .
</pre></code>
  <li>Launch Visual Studio Code by entering the following:
<pre><code class="lang-azurecli" title="JSON">
code .
</pre></code>
  <li>Select <b>Program.cs</b> in the left panel
  <li>If you see a prompt stating <b>Required assets to build and debug are missing from 'IoT-LevelUp-Code'.  Add them?</b>, select <b>Yes</b>
  <li>On line 28, paste your <u>Device</u> connection string
  <li>Set a breakpoint on line 33 by clicking just to the left of the line number
    <img src="
    
    
