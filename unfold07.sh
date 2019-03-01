netplan apply
ovs-vsctl list-br | xargs -r -l ovs-vsctl del-br
rm -f /var/log/openvswitch/*
rm -rf /etc/cni/net.d/*
rm -f /var/lib/openvswitch/{*,.*}
systemctl restart openvswitch-switch.service 
sleep 1
#bash ovs-pre.sh 


