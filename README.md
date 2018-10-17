# shadowsocks
<p>
  This Dockerfile builds an image with the Python implementation of shadowsocks. Based on Ubuntu 16.04 image.
</p>
<h2>
  Quick Start
</h2>
<p>
  This image uses ENTRYPOINT to run the containers as an executable.
</p>
<pre>
  <code>
    docker run --restart=always -d -p $PORT:$PORT wuyl/shadowsocks -s 0.0.0.0 -p $PORT -k $SSPASSWORD -m aes-256-cfb
  </code>
</pre>
<p>
  You can configure the service to run on a port of your choice. Just make sure the port number given to Docker is the same as the one given to shadowsocks. Also, it is highly recommended that you store the shadowsocks password in an environment variable as shown above. This way the password will not show in plain text when you run docker ps.
</p>
<p>
  For more command line options, refer to the <a href="https://github.com/shadowsocks/shadowsocks/tree/master">shadowsocks documentation</a>
</p>

-----------------------------------------------------------------------------------------------------------------------------------
shadowsocks client download link can be found in below link
https://github.com/shadowsocks
