---


---

<hr>
<hr>
<h1 id="aws-cloud-practitioner">AWS Cloud Practitioner</h1>
<p><img src="https://ifpnews.com/wp-content/uploads/2019/03/1619936_f362.jpg" alt="Best Options to Take AWS Certified Cloud Practitioner Course | Iran Front  Page"></p>
<h3 id="¿que-es-el-computo-en-la-nube">¿Que es el computo en la nube?</h3>
<p>El computo en la nube es la entrega bajo demanda de recursos informáticos a través de internet con precios de pago por uso.</p>
<h3 id="seis-ventajas-de-computoación-en-la-nube">Seis ventajas de computoación en la nube</h3>
<ul>
<li>Cambie los gastos de capital por gastos variable</li>
<li>Benefíciese de enormes economías de escala.</li>
<li>Benefíciese de enormes economías de escala.</li>
<li>Benefíciese de enormes economías de escala.</li>
<li>Deje de gastar dinero en la ejecución y el mantenimiento de centros de datos</li>
<li>Globalícese en minutos</li>
</ul>
<h2 id="tipos-de-computación-en-la-nube">Tipos de computación en la nube</h2>
<h3 id="infrastructure-as-a-service-iaas">Infrastructure as a Service (IaaS)</h3>
<p>La infraestructura como servicio (IaaS) contiene los componentes básicos para la TI en la nube y, por lo general, proporciona acceso a funciones de red, computadoras (virtuales o en hardware dedicado) y espacio de almacenamiento de datos. IaaS le proporciona el más alto nivel de flexibilidad y control de gestión sobre sus recursos de TI</p>
<h3 id="platform-as-a-service-paas">Platform as a Service (PaaS)</h3>
<p>La plataforma como servicio (PaaS) elimina la necesidad de que su organización administre la infraestructura subyacente (generalmente hardware y sistemas operativos) y le permite concentrarse en la implementación y administración de sus aplicaciones.</p>
<h3 id="software-as-a-service-saas">Software as a Service (SaaS)</h3>
<p>El software como servicio (SaaS) le proporciona un producto completo que es ejecutado y administrado por el proveedor de servicios. En la mayoría de los casos, las personas que se refieren al software como servicio se refieren a aplicaciones de usuario final.</p>
<h2 id="modelos-de-implementacion-de-computo-en-la-nube.">Modelos de implementacion de computo en la nube.</h2>
<p><strong>Nube Publica:</strong> Es el modelo de nube compartida con otros usuarios</p>
<p><strong>Nube Privada:</strong>  Es el modelo de nube que esta unicamente privada y reservada para el cliente.</p>
<p><strong>Nube Hibrida:</strong> Es una combinacion entre publica y privada.</p>
<h2 id="infraestructura-global">Infraestructura global</h2>
<p><img src="https://d2908q01vomqb2.cloudfront.net/4d134bc072212ace2df385dae143139da74ec0ef/2020/09/03/1-infrastructure-1-1024x528.png" alt="enter image description here"></p>
<h4 id="regiones.">Regiones.</h4>
<p>Una región de AWS es una ubicación física en el mundo donde tenemos varias zonas de disponibilidad</p>
<h4 id="zonas-de-disponibildad.">Zonas de disponibildad.</h4>
<p>Las zonas de disponibilidad consisten en uno o más centros de datos discretos, cada uno con energía, redes y conectividad redundantes, alojados en instalaciones separadas. (Centro de datos)</p>
<h4 id="ubicaciones-a-borde-o-puntos-de-presencia.">Ubicaciones a borde o puntos de presencia.</h4>
<p>Se utilizan para almacenar en cache el contenido y normalmente se compone de CloudFront que es la red de distribución de contenido de AWS.</p>
<h4 id="¿porque-deberia-elegir-una-region-de-aws-en-particular">¿Porque deberia elegir una region de AWS en particular?</h4>
<ul>
<li>Las leyes y soberanía de datos (Data Sovereignty Laws)</li>
<li>La latencia para los usuarios finales.</li>
<li>Los servicios disponibles.</li>
</ul>
<h4 id="diferentes-paquetes-de-soporte">Diferentes paquetes de soporte</h4>

<table>
<thead>
<tr>
<th>Nombre</th>
<th>Precio</th>
<th>Plazos de respuesta</th>
<th>Descripción</th>
</tr>
</thead>
<tbody>
<tr>
<td>Basic</td>
<td>Free</td>
<td></td>
<td></td>
</tr>
<tr>
<td>Desarrollador</td>
<td>$29</td>
<td>12-24 horas</td>
<td><em>Se recomienda si está realizando pruebas en AWS.</em></td>
</tr>
<tr>
<td>Business</td>
<td>$1000</td>
<td>1 hora <strong>24x7</strong></td>
<td><em>Recomendado si tiene cargas de producción en AWS.</em></td>
</tr>
<tr>
<td>Enterprise</td>
<td>$15000</td>
<td>15 Minutos <strong>24x7</strong></td>
<td><em>Recomendado si tiene cargas de trabajo críticas o empresariales en AWS.</em> (Obtienes un <strong>TAM</strong> Asesor de AWS</td>
</tr>
</tbody>
</table><h2 id="iam-identity-and-access-management">IAM (Identity and Access Management)</h2>
<p><img src="https://i0.wp.com/sra.io/wp-content/uploads/2020/01/AWS-IAM-Exploitation.png?fit=1102,620&amp;ssl=1" alt="enter image description here"></p>
<p><strong>IAM:</strong> AWS Identity and Access Management (IAM) es un servicio web que le ayuda a controlar de forma segura el acceso a los recursos de AWS. Utilice IAM para controlar quién está autenticado (ha iniciado sesión) y autorizado (tiene permisos) para utilizar recursos. <strong>Es un servicio Global.</strong></p>
<ul>
<li><strong>Usuarios:</strong> Una entidad que se crea en AWS para representar a la persona o a la aplicación que se utiliza para interactuar con AWS.</li>
<li><strong>Roles:</strong> Es una entidad temporal.</li>
<li><strong>Grupos:</strong> ¨Permite agrupar a varios usuario y gestionar los permisos mas facil. <em>Todos los usuarios heredan los permisos de manera automatica al asociarse con un grupo</em>.</li>
<li><strong>Politica:</strong> Archivo que contiene información en formtato JSON con permisos.</li>
</ul>
<p><strong>Las politicas de AWS tiene un formato JSON Ejemplo:</strong></p>
<pre class=" language-json"><code class="prism  language-json"><span class="token punctuation">{</span>
    <span class="token string">"Version"</span><span class="token punctuation">:</span> <span class="token string">"2012-10-17"</span><span class="token punctuation">,</span>
    <span class="token string">"Statement"</span><span class="token punctuation">:</span> <span class="token punctuation">{</span>
        <span class="token string">"Effect"</span><span class="token punctuation">:</span> <span class="token string">"Allow"</span><span class="token punctuation">,</span>
        <span class="token string">"Action"</span><span class="token punctuation">:</span> <span class="token punctuation">[</span>
            <span class="token string">"service-prefix-1:*"</span><span class="token punctuation">,</span>
            <span class="token string">"service-prefix-2:action-name-a"</span><span class="token punctuation">,</span>
            <span class="token string">"service-prefix-2:action-name-b"</span>
        <span class="token punctuation">]</span><span class="token punctuation">,</span>
        <span class="token string">"Resource"</span><span class="token punctuation">:</span> <span class="token string">"*"</span><span class="token punctuation">,</span>
        <span class="token string">"Condition"</span><span class="token punctuation">:</span> <span class="token punctuation">{</span>
            <span class="token string">"Bool"</span><span class="token punctuation">:</span> <span class="token punctuation">{</span><span class="token string">"aws:MultiFactorAuthPresent"</span><span class="token punctuation">:</span> <span class="token boolean">true</span><span class="token punctuation">}</span><span class="token punctuation">,</span>
            <span class="token string">"DateGreaterThan"</span><span class="token punctuation">:</span> <span class="token punctuation">{</span><span class="token string">"aws:CurrentTime"</span><span class="token punctuation">:</span> <span class="token string">"2017-07-01T00:00:00Z"</span><span class="token punctuation">}</span><span class="token punctuation">,</span>
            <span class="token string">"DateLessThan"</span><span class="token punctuation">:</span> <span class="token punctuation">{</span><span class="token string">"aws:CurrentTime"</span><span class="token punctuation">:</span> <span class="token string">"2017-12-31T23:59:59Z"</span><span class="token punctuation">}</span>
        <span class="token punctuation">}</span>
    <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
</code></pre>
<h1 id="section"></h1>
<h3 id="conceptos-clave">Conceptos clave</h3>
<p><strong>Entidad:</strong> Las entidades de IAM son los usuarios (usuarios de IAM y usuarios federados) y roles que se crean y utilizan para la autenticación.</p>
<p><strong>Identidad:</strong> Una identidad es un objeto de recurso de IAM que se utiliza para identificar y agrupar. Puede adjuntar una política a una identidad de IAM. Estos incluyen usuarios, grupos y roles.</p>
<p><strong>Principal:</strong>   Un principal es una persona o aplicación que utiliza el usuario raíz de la cuenta de AWS, un usuario de IAM o un rol de IAM para iniciar sesión y realizar solicitudes a AWS.</p>
<h1 id="section-1"></h1>
<p><strong>Practicas recomendadas:</strong></p>
<ol>
<li>Borrar las claves de acceso para el usuario root.</li>
<li>Habilitar el MFA.</li>
<li>No utilizar el usuario root, se debe crear un usuario con permisos de administrador. <strong>Nunca usar la cuenta root a menos que sea necesario.</strong></li>
<li>Usar los grupos para asignar permisos. <strong>Facilita la administración</strong></li>
<li>Aplicar una politica de contraseñas</li>
</ol>
<p>Formas de acceder a la plataforma de AWS.</p>
<ul>
<li>Via consola (Web)</li>
<li>CLI</li>
<li>SDK</li>
</ul>
<p><strong>Nota importante:</strong> Puedes exportar todos los usuarios y su información por medio de <strong>Reporte de credenciales</strong> estas contienen información sobre:</p>
<ol>
<li>Credenciales</li>
<li>Claves de acceso</li>
<li>MFA</li>
</ol>
<h1 id="s3">S3</h1>
<p><img src="https://cdn.gruntwork.io/gruntwork-website/0c77b6e0c6c31ed6e439e209cf1adf74.png" alt="enter image description here"></p>
<p><strong>Amazon Simple Storage Service Amazon S3</strong> es un servicio de lmacenamiento de objetos que ofrece escalabilidad, disponibilidad de datos, seguridad y rendimiento.</p>
<ul>
<li>Permite la subida de archivos <strong>estáticos</strong> (no dinámicos).</li>
<li>Los archivos pueden ser de 0 bytes a 5 terabytes.</li>
<li>Almacenamiento Ilimitado.</li>
<li>Los archivos se almacenan en <strong>Buckets</strong></li>
<li>Cuando subes un archivo recibes un código de estado 200.</li>
<li><strong>El nombre de tu bucket debe ser único a nivel mundial</strong>.</li>
</ul>
<p><strong>Fundamentos clave de S3</strong></p>
<ul>
<li><strong>Key:</strong> Simplemente es el nombre del objeto.</li>
<li><strong>Value:</strong> Son los bytes que construyen el objeto (archivo).</li>
</ul>
<p><strong>Términos de modelo</strong></p>
<ul>
<li>Cada vez que se sube un objeto a un bucket s3 es posible consultarlo inmediatamente.</li>
<li>Cuando se actualiza o elimina es muy probable de que los cambios tarden en aparecer.</li>
</ul>
<h3 id="clases-de-s3">Clases de S3</h3>
<ul>
<li><strong>S3 Standard</strong>
<ul>
<li>Almacenamiento estandard de AWS proporciona una durabilidad de .99.99% y disponibilidad de 99.999999999% <strong>11 9’s</strong>.</li>
<li>Permite la replicación.</li>
</ul>
</li>
<li><strong>S3 IA</strong>
<ul>
<li>Almacenamiento de archivos con acceso de poca frecuencia.</li>
<li>Mas barato que el estandard.</li>
<li>Rápido acceso</li>
</ul>
</li>
<li><strong>S3 One Zone IA</strong>
<ul>
<li>Almacenamieto de archivos con acceso de poca frecuencia.</li>
<li>No hay replicación por ende mas barato.</li>
</ul>
</li>
<li><strong>S3 Intelligent-Tiering</strong>
<ul>
<li>Utiliza el aprendizaje automatica para mover los archivos al tipo de clase mas conveninte.</li>
<li>No afecta al rendimiento ni a la sobrecarga.</li>
</ul>
</li>
<li><strong>S3 Glacier</strong>
<ul>
<li>Es el mas seguro y duradero.</li>
<li>Mucho mas barato.</li>
<li>Los tiempos de recuperación puede variar entre minutos a horas,</li>
</ul>
</li>
<li><strong>S3 Glacier Deep Archive</strong>
<ul>
<li>El mas barato de todos.</li>
<li>Los tiempos de recuperación están entre las 12 horas.</li>
</ul>
</li>
</ul>
<h4 id="restricción-de-buckets">Restricción de buckets</h4>
<ul>
<li><strong>Politica de bucket:</strong> Puedes aplicar directamente politicas de permisos a los buckets, lo cual afecta a todos los objetos dentro del bucket.</li>
<li><strong>Politica de objeto:</strong> Aplica pollita de permisos a un solo objeto.</li>
<li><strong>IAM</strong> Tambien se puede aplicar politicas de permisos por medio del servicio IAM.</li>
</ul>
<h1 id="cloudfront">CloudFront</h1>
<p><img src="https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/161939/8ee0f4d2-5035-a50b-28f1-cfca5150ac68.png" alt="enter image description here"></p>
<p><strong>Amazon CloudFront</strong> es un servicio rápido de red de entrega de contenido (CDN) que distribuye a clientes datos, videos, aplicaciones y API globalmente de forma segura, con baja latencia, altas velocidades de transferencia.</p>
<p><strong><img src="https://lh3.googleusercontent.com/WcZouM-FQ158RZl1tqNizU1O955-CgjtHfcaJp4TzBxjgk0w4MmXueeTQWkGrl6IQkVexDPc0WyCJEd-i2g7MQL5sAclYokRsMT6zK6HiLzY2ldcvC8zyvudXs3kfmMj3xa-7HN1" alt=""></strong></p>
<p><strong>¿Como funciona?</strong> El cliente pregunta a la ubicación de borde mas cercana si tiene el archivo <strong>X</strong> , si no lo tiene lo descarga directamente desde el origen de tal manera que ese archivo se quedara almacenado en la ubicación de borde mas cercana (cache) para que la próxima vez no tenga que consultarlo desde el origen si no desde la ubicación de borde mas cercana.</p>
<p><strong>Terminologia</strong></p>
<ol>
<li><strong>Edge location:</strong> Es la ubicación donde se almacena nuestro contenido en cache.</li>
<li><strong>Origen:</strong> Es el origen de todos nuestros archivo que el CDN distribuye, este puede ser: Bucket S3, Una instancia EC2, Elastic Load Balancer o el servicio Route53.</li>
<li><strong>Distribución:</strong> Es el nombre que se le da al CDN</li>
</ol>
<p>Tipos de distribución</p>
<ul>
<li><strong>Web:</strong> Usado especialmente para páginas web.</li>
<li><strong>RTMP:</strong> Usado para transmición multimedia.</li>
</ul>
<p><strong>Nota:</strong> Las ubicaciones de borde no son solo de lectura si no tambien de escritura.</p>
<h1 id="cloudformation">CloudFormation</h1>
<p><img src="https://miro.medium.com/proxy/1*lgMb-q1UPxco34n6s_lLVw.png" alt="enter image description here"></p>
<p><strong>AWS CloudFormation</strong> le ofrece una forma sencilla de modelar un conjunto de recursos relacionados de AWS y de terceros, aprovisionarlos de manera rápida y consistente.</p>
<h1 id="ec2">EC2</h1>
<p><img src="https://benjagarrido.com/wp-content/uploads/2020/03/Amazon_AWS_EC2.jpg" alt="enter image description here"></p>
<p><strong>Amazon Elastic Compute Cloud (Amazon EC2)</strong> es un servicio web que proporciona capacidad informática en la nube segura y de tamaño modificable.</p>
<p><strong>Opciones de compra de EC2</strong></p>
<ul>
<li>
<p><strong>Instancias bajo demanda</strong>: pague por  segundos  por las instancias que lance.</p>
</li>
<li>
<p><strong>Instancias reservadas</strong>: reduce sus costos de Amazon EC2 comprometiéndose con una configuración de instancia coherente, incluido el tipo de instancia y la región, por un período de 1 o 3 años.</p>
</li>
<li>
<p><strong>Instancias de spot</strong>: solicite instancias EC2 no utilizadas, que pueden reducir sus costos de Amazon EC2 considerablemente.</p>
</li>
<li>
<p><strong>Hosts dedicados</strong>: Pague por un host físico dedicado exclusivamente a ejecutar sus instancias y utilice sus propias licencias de software por conector, por núcleo o por VM para reducir costos.</p>
</li>
<li>
<p><strong>Instancias dedicadas</strong>: Pague por hora las instancias que se ejecutan en hardware de un solo propietario.</p>
</li>
<li>
<p><strong>Reserva de capacidads</strong>  – Reserva de capacidad para las instancias EC2 en una zona de disponibilidad específica para cualquier duración.</p>
</li>
</ul>
<h3 id="puertos-a-recordar">Puertos a recordar</h3>
<ul>
<li>Puerto 22 SSH (Linux)</li>
<li>Puerto 3389 Remote desktop protocol (Windows)</li>
<li>Puerto 80 HTTP</li>
<li>Puerto 443 HTTPS</li>
</ul>
<h3 id="seguridad-en-ec2"><strong>Seguridad en EC2</strong></h3>
<p><strong>Grupo de seguridad</strong> Funciona como un firewall virtual de la instancia para controlar el tráfico entrante y saliente. <strong>(Para servicios como rdp,ldap,ftp)</strong></p>
<p><strong>Lista de control de acceso (ACL) de red</strong> Es una capa de seguridad opcional para su VPC que actúa como firewall para controlar el tráfico entrante y saliente de una o varias subredes. Puede configurar ACL de red con reglas similares a sus grupos de seguridad para añadir una capa de seguridad adicional a su VPC. <strong>(Para IPS como denegar x.x.x.x/24)</strong></p>
<h1 id="ebs">EBS</h1>
<p><img src="https://i.imgur.com/22BuydV.png" alt="enter image description here"></p>
<p>Es un servicio de almacenamiento de bloque de alto rendimiento fácil de usar, diseñado para usar con Amazon Elastic Compute Cloud (EC2) tanto en cargas de trabajo intensivas de rendimiento como de transacciones, a cualquier escala.</p>
<p><strong>Tipos de EBS</strong></p>
<p><strong>SSD</strong></p>
<ul>
<li>General Purpose SSD <strong>GP2</strong></li>
<li>Provisioned IOPS SSD <strong>IO1</strong>  (Alto rendimiento,baja latecia y cargas de trabajo criticas)</li>
</ul>
<p><strong>Magneticos</strong></p>
<ul>
<li>Throughput Optimized HDD <strong>ST1</strong> (Bajo costo)</li>
<li>Cold HDD <strong>SC1</strong> (Bajo costo,acceso poco frecuente)</li>
</ul>
<h1 id="relational-databases-rds">Relational Databases RDS</h1>
<p><img src="https://p2zk82o7hr3yb6ge7gzxx4ki-wpengine.netdna-ssl.com/wp-content/uploads/Amazon-RDS-1.png" alt="enter image description here"></p>
<p><strong>Amazon Relational Database Service (Amazon RDS)</strong> facilita la configuración, el funcionamiento y el escalado de una base de datos relacional en la nube. Proporciona una capacidad rentable y redimensionable al tiempo que automatiza las tareas administrativas que requieren mucho tiempo, como el aprovisionamiento de hardware, la configuración de la base de datos, la aplicación de parches y las copias de seguridad</p>
<p><strong>Caracteristicas</strong></p>
<p><strong>MultiAZ:</strong> BD en dos zonas de disponibilidad de tal manera que si una falla redirige todo a la otra zona de disponibilidad<br>
<strong>Read Replicas:</strong> Todos los cambios son replicados en las BD que tengas en otras zonas de disponibilidad. <em>(Mejor rendimiento)</em></p>
<p><strong>Motores de RDS:</strong></p>
<ul>
<li>Mysql</li>
<li>SQL Server</li>
<li>Oracle</li>
<li>Postgres</li>
<li>Amazon Aurora</li>
<li>MariaDB</li>
</ul>
<h1 id="dynamodb">DynamoDB</h1>
<p><img src="https://miro.medium.com/max/568/1*Xze_Xz2roNj82VzejItFdg.png" alt="enter image description here"></p>
<p><strong>Amazon DynamoDB</strong> Es una base de datos de clave-valor y documentos que ofrece rendimiento en milisegundos de un solo dígito a cualquier escala. Se trata de una base de datos completamente administrada, duradera, multiactiva y de varias regiones que cuenta con copia de seguridad, restauración y seguridad integradas, así como almacenamiento de caché en memoria para aplicaciones a escala de Internet. DynamoDB puede gestionar más de 10 billones de solicitudes por día y puede admitir picos de más de 20 millones de solicitudes por segundo.</p>
<ul>
<li><strong>Alto redimiento</strong></li>
</ul>
<h1 id="amazon-redshift">Amazon Redshift</h1>
<p><img src="https://miro.medium.com/max/350/1*5i1_LPEiMqqEuAmYhcmcIw.png" alt="enter image description here"></p>
<p><strong>Amazon Redshift</strong> Es un servicio de almacenamiento de datos a escala de petabytes totalmente administrado en la nube. Puede comenzar con unos pocos cientos de gigabytes de datos y escalar a un petabyte o más. Esto le permite utilizar sus datos para adquirir nuevos conocimientos para su negocio y sus clientes.</p>
<ul>
<li><strong>Para Business Intelligence y DataWareHousing</strong></li>
<li><strong>Consultas super complejas</strong></li>
</ul>
<h1 id="amazon-elasticache">Amazon ElastiCache</h1>
<p><img src="https://d33wubrfki0l68.cloudfront.net/5df4b21fe88419bf4bed9c470e9238b3fb72e369/a0ea1/img/aws-elasticcache.png" alt="enter image description here"></p>
<p><strong>Amazon ElastiCache</strong> Permite configurar, ejecutar y escalar sin problemas almacenes de datos en memoria compatibles de código abierto populares en la nube. Cree aplicaciones con uso intensivo de datos o aumente el rendimiento de sus bases de datos existentes recuperando datos de almacenes de datos en memoria de alto rendimiento y baja latencia. Amazon ElastiCache es una opción popular para casos de uso en tiempo real como almacenamiento en caché, almacenes de sesiones, juegos, servicios geoespaciales, análisis en tiempo real y colas. <strong>Almacenar datos en cache para acelerar el rendimiento</strong></p>
<p><strong>Motores:</strong></p>
<ol>
<li>Redis</li>
<li>Memcached</li>
</ol>
<h1 id="elastic-load-balancing">Elastic Load balancing</h1>
<p><img src="https://miro.medium.com/max/350/1*BzlH_VGf_QL0c3abfAF-bg.png" alt="enter image description here"></p>
<p><strong>Elastic Load Balancing</strong> distribuye automáticamente el tráfico de aplicaciones entrante a través de varios destinos, tales como las instancias de Amazon EC2, los contenedores, las direcciones IP, las funciones Lambda y los dispositivos virtuales.</p>
<p><strong>Tipos de balanceadores:</strong></p>
<ol>
<li><strong>Balanceador de carga de aplicaciones:</strong> El balanceador de carga de aplicaciones es el más adecuado para el equilibrio de carga del tráfico HTTP y HTTPS. Proporciona un direccionamiento de solicitudes avanzado dirigido a la entrega de arquitecturas de aplicaciones modernas, incluidos microservicios y contenedores.</li>
<li><strong>Balanceador de carga de red:</strong> El balanceador de carga de red es el más adecuado para equilibrar la carga del tráfico del <strong>TCP</strong> y <strong>UDP</strong> donde se requiere un rendimiento extremo. Un balanceador de carga de red enruta el tráfico a los destinos dentro de Amazon VPC y puede atender millones de solicitudes por segundo a la vez que conserva latencias ultrabajas.</li>
<li><strong>Balanceador de carga Gateway:</strong> El balanceador de carga Gateway facilita la implementación, el escalado y la ejecución de dispositivos de redes virtuales de terceros. Al proporcionar balanceo de carga y escalado automático para flotas de dispositivos de terceros, el balanceador de carga Gateway es transparente para el origen y el destino del tráfico. Esta capacidad lo hace muy adecuado para trabajar con dispositivos de terceros para seguridad, análisis de red y otros casos de uso.</li>
</ol>
<p>Elasticache.</p>
<p>AWS Organizations.</p>
<p><img src="https://d2908q01vomqb2.cloudfront.net/4d134bc072212ace2df385dae143139da74ec0ef/2019/12/19/1n-1024x389.png" alt="Habilitación de la creación e implementación automatizada de código de  mainframe para Instituciones Financieras que utilizan servicios AWS y  soluciones Micro Focus | Blog de Amazon Web Services (AWS)"></p>
