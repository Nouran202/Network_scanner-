# Fast Network Scanner Script

This script performs a fast and efficient network scan using `nmap`. It targets a user-provided IP address and scans the most common ports (1-1000) to identify open services. The scan is conducted using a TCP Connect scan (`-sT`), with aggressive timing (`-T4`) and no host discovery (`-Pn`), ensuring quicker results.

## Features:
- Scans the first 1000 most common ports.
- Uses `nmap`'s TCP Connect scan for speed.
- Outputs the scan results to a timestamped file.
- Skips host discovery for faster results if the host is known to be online.

## Usage:
1. Run the script using `bash fast_network_scanner.sh`.
2. Enter the target IP address when prompted.
3. The script will perform the scan and save the results in a timestamped text file.

## Example:
```bash
$ bash fast_network_scanner.sh
Enter the IP address to scan (example: 192.168.1.1):
192.168.1.1
Starting a fast scan on 192.168.1.1...
Scan complete! Results saved to fast_scan_20250426_220924.txt
