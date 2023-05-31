# lists/umg.sh | University of Michigan
# ip list source: https://cse.engin.umich.edu/about/resources/connection-attempts/
# what are these scanners: "These connections are part of computer science research projects that have been conducted by the University of Michigan since 2013. This research involves making a small number of harmless connection attempts to every publicly accessible computer worldwide each day. This allows scientists to measure the global Internet and analyze trends in technology deployment and security."
# why is it blocked: Unnecessary, potentially unwanted traffic
iptablesIO -s 141.212.120.0/24,141.212.121.0/24,141.212.122.0/24,141.212.124.0/24,141.212.125.0/24,141.212.123.0/24;
