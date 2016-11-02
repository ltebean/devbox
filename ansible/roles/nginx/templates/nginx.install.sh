# yum install gcc gcc-c++ pcre pcre-devel openssl openssl-devel zlib zlib-devel
mkdir -p /etc/nginx
cd /tmp
mkdir nginx-install
cd nginx-install
curl http://nginx.org/download/nginx-1.6.2.tar.gz | tar -xzf -
cd nginx-1.6.2
./configure --sbin-path=/etc/nginx/nginx --conf-path=/etc/nginx/nginx.conf --pid-path=/var/run/nginx.pid --with-http_stub_status_module
make
make install
rm -rf /tmp/nginx-install