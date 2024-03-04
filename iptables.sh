sudo iptables -L INPUT --line-numbers
sudo iptables -D INPUT 6
sudo iptables-save > /etc/iptables/rules.v4
sudo iptables -A INPUT -p tcp --dport 3306 -j ACCEPT
sudo iptables-save > /etc/iptables/rules.v4
sudo systemctl restart iptables
