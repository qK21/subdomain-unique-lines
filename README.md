# Subdomain Unique Lines



## Overview

Subdomain Unique Lines is a simple Bash script that removes duplicate lines from a file containing subdomains. It utilizes `awk` to process the file and outputs a new file without duplicate lines.


### Installation

No installation is required. Simply download the `sul.sh` script and make it executable.

```bash
curl -O https://raw.githubusercontent.com/qK21/subdomain-unique-lines/main/sul.sh
chmod +x sul.sh
```

### Usage Example

```bash
./sul.sh input.txt output.txt
```
Replace input.txt with your input file containing subdomains and output.txt with the desired name for the file without duplicates.

## Output Example

# Let's say you have an input file named `input.txt` with the following content:
```bash
subdomain1.example.com
subdomain2.example.com
subdomain1.example.com
subdomain3.example.com
subdomain2.example.com
```

Running the Subdomain Unique Lines script:

```bash
./sul.sh input.txt output.txt
```
## The script will output:
```bash
Duplicates removed. Result saved to output.txt
Input file lines: 5
Output file lines: 3
```

## Contributing

for any idea submitting pull requests. Your feedback and contributions are welcome!

## Author

- [qK21](https://github.com/qK21)
