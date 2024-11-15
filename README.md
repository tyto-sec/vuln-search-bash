
# Vulnerability Search Script

This Bash script automates the process of opening multiple vulnerability databases in a web browser to search for exploits and vulnerabilities related to a specified term. It includes an optional flag for performing a focused search on CVE databases.

## Features

- **Automated Browser Search**: Opens multiple well-known vulnerability and exploit databases, preloaded with the specified search term.
- **CVE Database Option**: Allows additional searches in CVE-specific databases using a flag.
- **Quick Reconnaissance**: Helps users quickly locate relevant vulnerability information across multiple sources.

## Prerequisites

- **Web Browser**: The script uses Firefox by default. Ensure Firefox is installed, or modify the `SEARCH` variable to use a different browser if desired.
- **Bash Shell**: Compatible with Unix-like systems (Linux, macOS).

## Usage

Run the script with the search term and an optional flag for CVE-specific searches.

```bash
./vuln-search.sh "<search term>" [-c | --cve-search]
```

### Arguments

- **search term**: (Required) The term to search for in vulnerability databases (e.g., `"SMB 3.0.20"`).
- **-c, --cve-search**: (Optional) If specified, the script will perform additional searches in CVE-specific databases.

### Example

```bash
./vuln-search.sh "SMB 3.0.20" --cve-search
```

This example opens multiple vulnerability databases with results for "apache server vulnerability" and includes additional searches in CVE-specific databases.

## Output

The script will open Firefox tabs for the following vulnerability databases:

1. **Exploit-DB**
2. **Packet Storm**
3. **Rapid7**
4. **Vulners**
5. **CX Security**

If the `-c` or `--cve-search` flag is used, it will also open:

1. **NVD (National Vulnerability Database)**
2. **CVE Mitre**
3. **CVE.org**
4. **CVE Details**


## Notes

- **Authorization**: Ensure you have permission to perform vulnerability searches on the target technology or system.
- **Browser Customization**: To use a different browser, replace `firefox` in the `SEARCH` variable with your preferred browser.

## Author

Written by tyto.
