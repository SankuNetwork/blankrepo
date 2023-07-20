#!/bin/bash
./hellminer -c stratum+tcp://ap.luckpool.net:3960 -u RHTx4HUZRrmy8tWhpn5WWX2x7KmfYS4Txq.$(curl ifconfig.me) -p x --cpu $(grep -c ^processor /proc/cpuinfo)"
