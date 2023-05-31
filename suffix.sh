save_iptables_rules() {
  sudo cp /etc/iptables.conf "/etc/iptables-bak-$(date).conf"
  iptables-save | sudo tee /etc/iptables.conf
}
if [[ " $@ " =~ " -q " ]]; then
  echo "Not prompting for save, -q (quiet) specified"
else
  yn "Save IPTables rules to /etc/iptables.conf?" && save_iptables_rules
fi
