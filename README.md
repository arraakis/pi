
# System Setup and Monitoring Scripts

## Description

This repository includes two scripts:

1. **System Setup Script (Bash):** Automates the installation of Docker, UFW (Uncomplicated Firewall), and Fail2Ban. Adds the current user to the Docker group if Docker is installed.

2. **CPU Temperature Monitoring Script (Go):** Reads and displays the CPU temperature in degrees Celsius for Linux-based systems.

## Usage

- **System Setup Script:** Run `./setup_script.sh` in the Bash shell.
- **CPU Temperature Monitoring Script:** Compile with `go build -o cpu_temp_monitor cpu_temp_monitor.go` and run using `./cpu_temp_monitor`.



