#!/bin/bash

echo -e "\nVulnerability Search"
echo "Written by tyto"

if [ -z "$1" ]; then
    echo "Usage: $0 '<search term>' [-c | --cve-search]"
else 
    echo ""

    SEARCH="firefox"
    TARGET="$1"
    CVE_SEARCH=false

    if [[ "$2" == "-c" || "$2" == "--cve-search" ]]; then
        CVE_SEARCH=true
    fi

    echo "[...] Exploit DB Search"
    $SEARCH "https://google.com/search?q=site:exploit-db.com+$TARGET" 2> /dev/null
    echo "[...] Packet Storm Search"
    $SEARCH "https://google.com/search?q=site:packetstormsecurity.com+$TARGET" 2> /dev/null
    echo "[...] Rapid 7 Search"
    $SEARCH "https://google.com/search?q=site:rapid7.com+$TARGET" 2> /dev/null
    echo "[...] Vulners Search"
    $SEARCH "https://google.com/search?q=site:vulners.com+$TARGET" 2> /dev/null
    echo "[...] CX Security Search"
    $SEARCH "https://google.com/search?q=site:cxsecurity.com+$TARGET" 2> /dev/null
    
    if [ "$CVE_SEARCH" = true ]; then
        echo "[...] NVD Search"
        $SEARCH "https://google.com/search?q=site:nvd.nist.gov+$TARGET" 2> /dev/null
        echo "[...] CVE Mitre Search"
        $SEARCH "https://google.com/search?q=site:cve.mitre.org+$TARGET" 2> /dev/null
        echo "[...] CVE Search"
        $SEARCH "https://google.com/search?q=site:cve.org+$TARGET" 2> /dev/null
        echo "[...] CVE Details Search"
        $SEARCH "https://google.com/search?q=site:cvedetails.com+$TARGET" 2> /dev/null
    fi

    echo ""
fi