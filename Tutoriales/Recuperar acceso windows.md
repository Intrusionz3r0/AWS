---


---

<h1 id="recuperar-acceso-a-tu-instancia-windows-si-perdiste-tu-key-pair.">Recuperar Acceso a tu instancia windows si perdiste tu key pair.</h1>
<p><img src="https://georgiacapital.net/wp-content/uploads/best-windows-password-recovery.jpg" alt="enter image description here"></p>
<ol>
<li>Crea el siguiente rol: <a href="https://console.aws.amazon.com/iam/home?region=us-east-1#/policies/arn%3Aaws%3Aiam%3A%3Aaws%3Apolicy%2Fservice-role%2FAmazonEC2RoleforSSM">AmazonEC2RoleforSSM</a>.</li>
<li>Crea la siguiente política.</li>
</ol>
<pre class=" language-json"><code class="prism  language-json"><span class="token punctuation">{</span>
    <span class="token string">"Version"</span><span class="token punctuation">:</span> <span class="token string">"2012-10-17"</span><span class="token punctuation">,</span>
    <span class="token string">"Statement"</span><span class="token punctuation">:</span> <span class="token punctuation">[</span>
        <span class="token punctuation">{</span>
            <span class="token string">"Effect"</span><span class="token punctuation">:</span> <span class="token string">"Allow"</span><span class="token punctuation">,</span>
            <span class="token string">"Action"</span><span class="token punctuation">:</span> <span class="token punctuation">[</span>
                <span class="token string">"ssm:PutParameter"</span>
            <span class="token punctuation">]</span><span class="token punctuation">,</span>
            <span class="token string">"Resource"</span><span class="token punctuation">:</span> <span class="token punctuation">[</span>
                <span class="token string">"arn:aws:ssm:*:*:parameter/EC2Rescue/Passwords/i-*"</span>
            <span class="token punctuation">]</span>
        <span class="token punctuation">}</span>
    <span class="token punctuation">]</span>
<span class="token punctuation">}</span>
</code></pre>
<ol start="3">
<li>
<p>Adjunta la política al rol creado anteriormente.</p>
</li>
<li>
<p>Adjunta el rol a tu instancia <strong>windows</strong>.</p>
</li>
<li>
<p>Dirigete a <strong>AWS Systems Manager</strong> luego a <strong>Run Command</strong>.</p>
</li>
<li>
<p>Busca el documento con nombre: <strong>AWSSupport-RunEC2RescueForWindowsTool</strong>.</p>
</li>
<li>
<p>Selecciona la instancia.<br>
<strong><img src="https://lh5.googleusercontent.com/YyfbIMPZqpmQSfKLrfcnClzeeqn56ZN13fmV0git6oud70TkwqIxLs0qPRdNyeTIOzP3MHLYMjP4tboXFYblawB8A4EaasivtSrErIvKHd1XlJ6n3NWDHs05Wmtw7Yy-0jH735D7" alt=""></strong><br>
<strong>Nota:</strong> Si no aparece la instancia recomiendo crear otra instancia nueva y adjuntarle el disco de la instancia a recuperar, una vez hecho el procedimiento des-adjunta el disco y adjúntalo nuevamente en la original.</p>
</li>
<li>
<p>haz clic en <strong>RUN</strong> y espera a que termine el proceso.</p>
</li>
</ol>
<p><img src="https://lh3.googleusercontent.com/dBt3R0r4h6b9efaqi_HwB1JZIpoMqZTB3RR-MTqrC6DoipP5mI1F24b9W57DcwgK0qIqmAxtrJ5cyibm8Pz8cDZ_nNRsNlhGkf5ya3Vje3lYWKF2H-dTCQ2aE_xjJL3Xi3Ec2G7e" alt=""></p>
<ol start="9">
<li>Por último, haz clic en el id de tu instancia y dirígete al enlace.</li>
</ol>
<p><img src="https://lh5.googleusercontent.com/42cvdjQjCxCC4YmggVsYVQ0YYRljWYT3y876G-1WWAgk1iofKedDctHQX3Lh-HD2PAXo5Rw4Xn3Box64hQzyS6b37RqXG3x7vOlycICIKJX48tYPkl2oF0k9H00R5uNIuaO-O5Zt" alt=""><br>
<img src="https://lh4.googleusercontent.com/L2a5cWbpggbiaJpNMmFPnlCG9Dpa6GJtqShcfMaw_TrkdrK60IRVNRaxMxlBwaafBk4EFtmiir6Wc1Nnvs_SPRlrlgBwrpvgxVMgqOVU4BY7zVX3wQG6zccTtmgMKMgCFf9CnrRq" alt=""></p>

