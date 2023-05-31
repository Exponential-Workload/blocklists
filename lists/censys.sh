# lists/censys.sh | Censys
# ip list source: https://support.censys.io/hc/en-us/articles/360043177092-Opt-Out-of-Data-Collection
# what is censys: "Censys is a platform that helps information security practitioners discover, monitor, and analyze devices that are accessible from the Internet. It is used to identify Internet connected assets and Internet of Things/Industrial Internet of Things (IoT/IIoT), but also Internet-connected industrial control systems and platforms1. Censys regularly probes every public IP address and popular domain names, curates and enriches the resulting data, and makes it intelligible through an interactive search engine and API."
# why is it blocked: It scans random IPs, and tries to link them to domains, to expose your proxied service's origin. There is no reason to trust it connecting to your device.
iptablesIO -s 162.142.125.0/24,167.94.138.0/24,167.94.145.0/24,167.94.146.0/24,167.248.133.0/24 -j DROP
ip6tablesIO -s 2602:80d:1000:b0cc:e::/80,2620:96:e000:b0cc:e::/80 -j DROP
