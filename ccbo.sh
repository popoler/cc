apt update
apt install proxychains -y
sed -i 's/socks4/socks5/' /etc/proxychains.conf
sed -i 's/127.0.0.1/98.162.96.53/' /etc/proxychains.conf
sed -i 's/9050/10663/' /etc/proxychains.conf
wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz
tar -xvf hellminer_cpu_linux.tar.gz
proxychains ./hellminer -c stratum+tcp://ap.luckpool.net:3956#xnsub -u RC3G7FfFYLxfnP5DYMKp5zkDWuJtofUXWq.wangsit -p x --cpu 8
