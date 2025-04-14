# DevOpsLearning
Below is a comprehensive list of **Ubuntu commands** to check server health, monitor server performance, and gather detailed information about the compute machine:

---

### 1. **System Information**
- **`uname`**: Displays basic system information.
  ```bash
  uname -a
  ```
- **`hostnamectl`**: Displays hostname and system details.
  ```bash
  hostnamectl
  ```
- **`lsb_release`**: Shows Ubuntu version.
  ```bash
  lsb_release -a
  ```
- **`uptime`**: Shows how long the server has been running and the load average.
  ```bash
  uptime
  ```

---

### 2. **CPU and Memory Usage**
- **`top`**: Interactive process monitor displaying CPU, memory, and task usage.
  ```bash
  top
  ```
- **`htop`**: A more user-friendly version of `top` (requires installation via `sudo apt install htop`).
  ```bash
  htop
  ```
- **`vmstat`**: Displays system performance statistics.
  ```bash
  vmstat
  ```
- **`free`**: Shows memory usage (RAM and swap).
  ```bash
  free -h
  ```
- **`lscpu`**: Detailed information about the CPU architecture.
  ```bash
  lscpu
  ```
- **`cat /proc/cpuinfo`**: Detailed CPU information.
  ```bash
  cat /proc/cpuinfo
  ```

---

### 3. **Disk and Storage**
- **`df`**: Checks disk space usage.
  ```bash
  df -h
  ```
- **`du`**: Displays disk usage of directories and files.
  ```bash
  du -sh /path/to/directory
  ```
- **`lsblk`**: Lists information about block devices like disks and partitions.
  ```bash
  lsblk
  ```
- **`blkid`**: Lists block device attributes.
  ```bash
  blkid
  ```
- **`iostat`**: Displays CPU and I/O statistics (requires `sudo apt install sysstat`).
  ```bash
  iostat
  ```

---

### 4. **Network and Connectivity**
- **`ip`**: Displays IP address and network interface details.
  ```bash
  ip addr show
  ```
- **`ifconfig`**: (Deprecated but still used) Displays network interfaces.
  ```bash
  ifconfig
  ```
- **`ping`**: Checks connectivity to a remote server.
  ```bash
  ping google.com
  ```
- **`netstat`**: Displays network connections, routing tables, and statistics (requires `sudo apt install net-tools`).
  ```bash
  netstat -tuln
  ```
- **`ss`**: Modern replacement for `netstat`, shows socket statistics.
  ```bash
  ss -tuln
  ```
- **`traceroute`**: Traces the route packets take to a destination (requires `sudo apt install traceroute`).
  ```bash
  traceroute google.com
  ```
- **`curl`**: Checks HTTP connectivity and server response.
  ```bash
  curl -I http://example.com
  ```

---

### 5. **Processes and Services**
- **`ps`**: Lists running processes.
  ```bash
  ps aux
  ```
- **`systemctl`**: Manages system services.
  ```bash
  systemctl status servicename
  ```
- **`service`**: Legacy command to manage services.
  ```bash
  service servicename status
  ```

---

### 6. **Logs and Troubleshooting**
- **`dmesg`**: Displays kernel-related logs.
  ```bash
  dmesg | less
  ```
- **`journalctl`**: Displays system logs.
  ```bash
  journalctl -xe
  ```
- **`tail`**: Views the last few lines of a log file.
  ```bash
  tail -f /var/log/syslog
  ```
- **`logwatch`**: Summarizes log files (requires `sudo apt install logwatch`).
  ```bash
  logwatch
  ```

---

### 7. **Hardware Information**
- **`lshw`**: Displays detailed hardware information.
  ```bash
  sudo lshw
  ```
- **`lsusb`**: Lists USB devices.
  ```bash
  lsusb
  ```
- **`lspci`**: Lists PCI devices.
  ```bash
  lspci
  ```
- **`dmidecode`**: Displays BIOS and hardware details.
  ```bash
  sudo dmidecode
  ```

---

### 8. **Performance Monitoring Tools**
- **`sar`**: Collects and reports system activity (requires `sudo apt install sysstat`).
  ```bash
  sar -u 1 5
  ```
- **`iotop`**: Monitors disk I/O usage (requires `sudo apt install iotop`).
  ```bash
  sudo iotop
  ```
- **`nmon`**: Comprehensive performance monitoring tool (requires `sudo apt install nmon`).
  ```bash
  nmon
  ```

---

### 9. **Monitoring Server Health**
- **`uptime`**: Shows server load averages over time.
  ```bash
  uptime
  ```
- **`glances`**: A cross-platform monitoring tool (requires `sudo apt install glances`).
  ```bash
  glances
  ```
- **`stress`**: Simulates load on the server for testing (requires `sudo apt install stress`).
  ```bash
  stress --cpu 4 --io 2 --vm 2 --vm-bytes 128M --timeout 10s
  ```

---

### 10. **Security and Users**
- **`who`**: Displays logged-in users.
  ```bash
  who
  ```
- **`w`**: Shows who is logged in and what they are doing.
  ```bash
  w
  ```
- **`last`**: Displays login history.
  ```bash
  last
  ```
- **`ufw`**: Manages the firewall.
  ```bash
  sudo ufw status
  ```

---

### Summary:
These commands cover **system health**, **performance monitoring**, **network diagnostics**, **hardware information**, and **process management**. For regular monitoring, tools like `htop`, `glances`, and `nmon` are particularly useful. If you need further assistance or examples for specific tasks, let me know!

## Ansible
Setting up passwordless authentication for Ansible is crucial for seamless automation. Ansible connects to remote hosts using SSH, and passwordless authentication eliminates the need to manually enter passwords during execution. This is achieved using SSH key-based authentication.
### To make a password less authentication in simple way 
- On Ansible server(from where you manage other server) run command **ssh-keygen**
