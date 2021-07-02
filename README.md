# Duckybypass

DuckyBypass is a tactical reconnaissance tool which aims to gather enough information about a target protected by Cloudflare in the hopes of discovering the location of the server. Using Tor to mask all requests, the tool as of right now has 3 different attack phases.

1) Misconfigured DNS scan using DNSDumpster.com.
2) Scan the Crimeflare.com database.
3) Bruteforce scan over 2500 subdomains.

# Usage:
**[Normal Scan]  |** `python duckbypass.py -t website.com`

** | T O R   S C A N | **

**[Linux] |** `service tor start`
**[Windows] |** Install vidalia or just run the Tor browser

**[With Tor Scan] |** `python duckbypass.py -t website.com --tor`

# Disclaimer
This tool is a PoC (Proof of Concept) and does not guarantee results. It is possible to setup Cloudflare properly so that the IP is never released or logged anywhere; this is not often the case and hence why this tool exists. This tool is only for academic purposes and testing under controlled environments. Do not use without obtaining proper authorization from the network owner of the network under testing. The author bears no responsibility for any misuse of the tool.
