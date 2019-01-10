if ifconfig &>/dev/null; then
    ifconfig eth0 down
    ifconfig eth0 up
else
    ip link set eth0 down
    ip link set eth0 up
fi

shutdown -r now
sleep 60