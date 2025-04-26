#!/bin/bash 

RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
NC="\e[0m"

function fast_network_scan() {
    echo -e "${YELLOW}Enter the IP address to scan (example: 192.168.1.1):${NC}"
    read TARGET

    if [[ -z "$TARGET" ]]; then
        echo -e "${RED}No IP entered. Exiting.${NC}"
        exit 1
    fi

    TIMESTAMP=$(date +%Y%m%d_%H%M%S)
    OUTPUT_FILE="fast_scan_$TIMESTAMP.txt"

    echo -e "${YELLOW}Starting a fast scan on $TARGET...${NC}"
    echo -e "${YELLOW}This might take a while. Please wait...${NC}"

    # Fast scan using -T4 (faster timing), -sT (TCP Connect scan), -p1-1000 (first 1000 ports), and -Pn (no ping)
    sudo nmap -T4 -sT -p 1-1000 -Pn "$TARGET" -oN "$OUTPUT_FILE"

    echo -e "${GREEN}Scan complete! Results saved to ${OUTPUT_FILE}${NC}"
}

fast_network_scan
