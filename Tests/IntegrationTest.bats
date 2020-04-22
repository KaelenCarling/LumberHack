
@test "tests if HostAPD Starts with the correct configuration" {
	run /LumberHack/LumberHack.sh
	run ls -l
	[[ ${ps aux | grep 'hostapd'} == "hostapd" ]]
}

@test "tests if DNSmasq Starts with the correct configuration" {
	run /LumberHack/LumberHack.sh
	run ls -l
	[[ ${ps aux | grep 'DNSmasq'} == "DNSmasq" ]]
}

@test "tests if the Nginx service Starts with the correct configuration" {
	run /LumberHack/LumberHack.sh
	run ls -l
	[[ ${sudo start service nginx} == "Starting nginx" ]]
}
