#!/bin/bash
# prefix.sh
set -x
set -e

iptablesIO() {
  iptables -A INPUT $@
  iptables -A OUTPUT $@
}
ip6tablesIO() {
  ip6tables -A INPUT $@
  ip6tables -A OUTPUT $@
}
yn() {
  while true; do
    read -p "$* [y/n]: " yn
    case $yn in
      [Yy]*) return 0  ;;  
      [Nn]*) echo "Aborted" ; return  1 ;;
    esac
  done
}
