
This is forked from `git clone git://thekelleys.org.uk/dnsmasq.git ` (v2.89)

- **Cross-compiling (stand-alone executable)**

- **The user validation is removed**

- **An important upgrade to optimise large numbers of --server options**
```
	Optimise reading large numbers of --server options. When re-reading
	upstream servers from /etc/resolv.conf or other sources that
	can change dnsmasq tries to avoid memory fragmentation by re-using
	existing records that are being re-read unchanged. This involves
	seaching all the server records for each new one installed.
	During startup this search is pointless, and can cause long
	start times with thousands of --server options because the work
	needed is O(n^2). Handle this case more intelligently.
	Thanks to Ye Zhou for spotting the problem and an initial patch.
```

# dnsmasq
a lightweight, caching DNS proxy with integrated DHCP server.
