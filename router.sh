
sudo sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
sudo iptables -t nat -A POSTROUTING -o wlp3s0 -j MASQUERADE
nmcli con up "Router Raspberry Pi"

