sudo ip netns add g1
sudo ip link set enp1s0f0np0 netns g1
sudo ip  netns exec  g1 ifconfig enp1s0f0np0 192.168.4.11
sudo ip  netns exec  g1 iperf -B 192.168.4.11 -s
