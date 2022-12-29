echo "set ip forward and nat"
echo 1 > /proc/sys/net/ipv4/ip_forward
iptables -t nat -A POSTROUTING -s 10.8.0.0/16 -j MASQUERADE
