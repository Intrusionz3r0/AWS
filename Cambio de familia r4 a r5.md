---


---

<h1 id="cambio-de-familia-r4-a-r5-windows">Cambio de familia R4 a R5 Windows</h1>
<p><img src="https://www.ibserveis.com/nueva/assets/img/about-boxes-3.jpg" alt="AWSLOGO"></p>
<p>Descargamos <strong>PVDrivers</strong> y <strong>ENADrivers</strong>.</p>
<pre class=" language-powershell"><code class="prism  language-powershell">C:\&gt; <span class="token function">invoke-webrequest</span> https:<span class="token operator">/</span><span class="token operator">/</span>s3<span class="token punctuation">.</span>amazonaws<span class="token punctuation">.</span>com<span class="token operator">/</span>ec2<span class="token operator">-</span>windows<span class="token operator">-</span>drivers<span class="token operator">-</span>downloads<span class="token operator">/</span>ENA<span class="token operator">/</span>Latest<span class="token operator">/</span>AwsEnaNetworkDriver<span class="token punctuation">.</span>zip <span class="token operator">-</span>outfile <span class="token variable">$env</span>:USERPROFILE\AwsEnaNetworkDriver<span class="token punctuation">.</span>zip
C:\&gt; <span class="token function">invoke-webrequest</span> https:<span class="token operator">/</span><span class="token operator">/</span>s3<span class="token punctuation">.</span>amazonaws<span class="token punctuation">.</span>com<span class="token operator">/</span>ec2<span class="token operator">-</span>windows<span class="token operator">-</span>drivers<span class="token operator">-</span>downloads<span class="token operator">/</span>AWSPV<span class="token operator">/</span>Latest<span class="token operator">/</span>AWSPVDriver<span class="token punctuation">.</span>zip <span class="token operator">-</span>outfile <span class="token variable">$env</span>:USERPROFILE\AWSPVDriver<span class="token punctuation">.</span>zip
</code></pre>
<p>Nos dirigimos a la carpeta y extraemos los archivos <em>zip</em>.</p>
<pre class=" language-powershell"><code class="prism  language-powershell">C:\&gt; cd <span class="token variable">$env</span>:USERPROFILE
C:\&gt; <span class="token function">Add-Type</span> <span class="token operator">-</span>Assembly <span class="token string">"System.IO.Compression.Filesystem"</span>
C:\&gt; <span class="token namespace">[System.IO.Compression.ZipFile]</span>::ExtractToDirectory<span class="token punctuation">(</span><span class="token string">"C:\Windows\system32\config\systemprofile\AWSPVDriver.zip"</span><span class="token punctuation">,</span> <span class="token string">"C:\Windows\system32\config\systemprofile\AWSPVDriver"</span><span class="token punctuation">)</span>
C:\&gt; <span class="token namespace">[System.IO.Compression.ZipFile]</span>::ExtractToDirectory<span class="token punctuation">(</span><span class="token string">"C:\Windows\system32\config\systemprofile\AwsEnaNetworkDriver.zip"</span><span class="token punctuation">,</span> <span class="token string">"C:\Windows\system32\config\systemprofile\AwsEna"</span><span class="token punctuation">)</span>
</code></pre>
<ol>
<li>Dentro de la carpeta <strong>AWSPVDriver</strong> ejecutamos   <em>AWSPVDriverSetup.msi</em>.</li>
</ol>
<pre class=" language-powershell"><code class="prism  language-powershell">C\&gt; <span class="token punctuation">.</span>\AWSPVDriverSetup<span class="token punctuation">.</span>msi
</code></pre>
<ol start="2">
<li>Habilitamos la compatibilidad con ENA.</li>
</ol>
<h3 id="aws-cli">AWS CLI</h3>
<pre class=" language-bash"><code class="prism  language-bash">aws ec2 describe-instances --instance-ids i-04f6fec32990cf732 --query <span class="token string">"Reservations[].Instances[].EnaSupport"</span> 
aws ec2 modify-instance-attribute --instance-id i-04f6fec32990cf732 --ena-support
</code></pre>
<ol start="3">
<li>Dentro de la carpeta <strong>AwsEna</strong> ejecutamos el <em>install.ps1</em>.</li>
</ol>
<pre class=" language-powershell"><code class="prism  language-powershell">C\&gt; <span class="token punctuation">.</span>\install<span class="token punctuation">.</span>ps1
</code></pre>
<ol start="4">
<li>Detenemos la instancia y hacemos el cambio de familia.</li>
</ol>

