# lists/aoir.sh | Academy of Internet Research (https://academyforinternetresearch.org/)
# ip list source: i forgor
# what is AOIR: "We specialize in making internet safer by proactively scanning and checking for active vulnerabilities, open ports and CPE strings in the wild against all known ipv4 addresses. If we see an open port or service we will never do anything malicious and if we suspect you are vulnerable to something nasty send you an email associated with your domain. Think of us as future Shodan or Censys working for the benefit of all!"
# why is it blocked? See censys, shodan
iptablesIO -s 104.156.155.0,178.79.148.229 -j DROP
