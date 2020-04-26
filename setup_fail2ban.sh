apt install fail2ban
systemctl enable fail2ban
cat << EOF > /etc/fail2ban/jail.local
  [sshd]
  enabled = true
  banaction = iptables-multiport
  maxretry = 10
  findtime = 300
  bantime = 86400
EOF
systemctl restart fail2ban
systemctl status fail2ban
