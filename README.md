# Network_scanner-
This script performs a fast and efficient network scan using `nmap`. It targets a user-provided IP address and scans the most common ports (1-1000) to identify open services. The scan is conducted using a TCP Connect scan (`-sT`), with aggressive timing (`-T4`) and no host discovery (`-Pn`), ensuring quicker results.
