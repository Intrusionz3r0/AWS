---


---

<h1 id="cambio-de-familia-m4-a-m5-windows">Cambio de familia m4 a m5 Windows</h1>
<p><img src="https://www.ibserveis.com/nueva/assets/img/about-boxes-3.jpg" alt="AWSLOGO"></p>
<p>Puede consultar el siguiente articulo: <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/migrating-latest-types.html">Migrate to latest generation instance types</a>.</p>
<ol>
<li>Descargar los archivos de configuración.</li>
</ol>
<ul>
<li><a href="https://s3.amazonaws.com/ec2-windows-drivers-downloads/AWSPV/Latest/AWSPVDriver.zip">AWSPVDriver.zip</a></li>
<li><a href="https://s3.amazonaws.com/ec2-windows-drivers-downloads/ENA/Latest/AwsEnaNetworkDriver.zip">AwsEnaNetworkDriver.zip</a></li>
<li><a href="https://s3.amazonaws.com/ec2-windows-drivers-downloads/NVMe/Latest/AWSNVMe.zip">AWSNVMe.zip</a></li>
<li><a href="https://s3.amazonaws.com/ec2-downloads-windows/EC2Config/EC2Install.zip">EC2Install.zip</a></li>
</ul>
<ol start="2">
<li>
<p>Instalamos <a href="https://s3.amazonaws.com/ec2-downloads-windows/EC2Config/EC2Install.zip">EC2Config</a> <strong>(Opcional)</strong></p>
</li>
<li>
<p>Instalamos los <a href="https://s3.amazonaws.com/ec2-windows-drivers-downloads/AWSPV/Latest/AWSPVDriver.zip">AWSPVDrivers</a>.</p>
</li>
<li>
<p>Detenemos la instancia.</p>
</li>
<li>
<p>Nos dirigimos al <strong>cloudshell</strong> y ejecutamos los siguientes comandos.</p>
</li>
</ol>
<pre class=" language-bash"><code class="prism  language-bash">aws ec2 modify-instance-attribute --instance-id i-04538e3b48b425f36 --ena-support
aws ec2 describe-instances --instance-ids i-04538e3b48b425f36 --query <span class="token string">"Reservations[].Instances[].EnaSupport"</span>
</code></pre>
<ol start="6">
<li>
<p>Iniciamos la instancia e instalamos <a href="https://s3.amazonaws.com/ec2-windows-drivers-downloads/ENA/Latest/AwsEnaNetworkDriver.zip">AwsEnaNetworkDriver</a>.</p>
</li>
<li>
<p>instalamos <a href="https://s3.amazonaws.com/ec2-windows-drivers-downloads/NVMe/Latest/AWSNVMe.zip">AWSNVMe</a>.</p>
</li>
<li>
<p>Abrimos el cmd.</p>
</li>
</ol>
<pre><code>PS c:\&gt; rundll32.exe C:\Windows\System32\sppnp.dll,Sysprep_Generalize_Pnp
</code></pre>
<ul>
<li>Esperamos unos 3 minutos</li>
</ul>
<ol start="9">
<li>
<p>Hacemos el cambio de familia de m4 a m5.</p>
</li>
<li>
<p>Comprobar el cambio de familia.</p>
</li>
</ol>
<h4 id="comprobar-pvdrivers">Comprobar PVDrivers</h4>
<pre class=" language-powershell"><code class="prism  language-powershell">C\&gt; <span class="token function">Get-ItemProperty</span> HKLM:\SOFTWARE\Amazon\PVDriver
</code></pre>

