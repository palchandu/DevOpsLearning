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

## List down all ansible modules
Ansible modules are the building blocks of Ansible automation. They are small units of code that perform specific tasks, such as managing files, packages, services, cloud resources, and more. Below is a list of commonly used Ansible module categories and examples of modules within each category:

---

### **1. File and Directory Management**
- **Modules**:
  - `file`: Manage files and directories (e.g., create, delete, set permissions).
  - `copy`: Copy files from the control node to managed nodes.
  - `fetch`: Fetch files from remote nodes to the control node.
  - `template`: Deploy Jinja2 template files.
  - `replace`: Replace lines in a file using regular expressions.
  - `lineinfile`: Ensure a specific line is present in a file.

---

### **2. Package Management**
- **Modules**:
  - `apt`: Manage packages on Debian-based systems.
  - `yum`: Manage packages on Red Hat-based systems.
  - `dnf`: Manage packages on Fedora and RHEL 8+.
  - `pip`: Manage Python packages.
  - `zypper`: Manage packages on SUSE systems.
  - `package`: Abstract module for managing packages across different platforms.

---

### **3. Service Management**
- **Modules**:
  - `service`: Manage services (start, stop, restart, enable).
  - `systemd`: Manage systemd services.
  - `supervisorctl`: Manage services under Supervisor.
  - `win_service`: Manage services on Windows.

---

### **4. User and Group Management**
- **Modules**:
  - `user`: Manage user accounts.
  - `group`: Manage groups.
  - `authorized_key`: Add or remove SSH authorized keys for users.

---

### **5. Networking**
- **Modules**:
  - `uri`: Interact with web services (e.g., make HTTP requests).
  - `firewalld`: Manage firewalld rules.
  - `iptables`: Manage iptables rules.
  - `netconf_config`: Manage network devices using Netconf.
  - `ios_config`: Manage Cisco IOS configurations.

---

### **6. Cloud Automation**
- **Modules**:
  - **AWS**:
    - `ec2`: Manage EC2 instances.
    - `s3`: Manage S3 buckets.
    - `rds`: Manage RDS instances.
    - `elb`: Manage Elastic Load Balancers.
  - **Azure**:
    - `azure_rm_virtualmachine`: Manage Azure VMs.
    - `azure_rm_networkinterface`: Manage Azure network interfaces.
    - `azure_rm_storageaccount`: Manage Azure storage accounts.
  - **Google Cloud**:
    - `gcp_compute_instance`: Manage Google Cloud compute instances.
    - `gcp_storage_bucket`: Manage Google Cloud storage buckets.

---

### **7. Database Management**
- **Modules**:
  - `mysql_db`: Manage MySQL databases.
  - `postgresql_db`: Manage PostgreSQL databases.
  - `mongodb_user`: Manage MongoDB users.
  - `mssql_db`: Manage Microsoft SQL Server databases.

---

### **8. System Information and Control**
- **Modules**:
  - `setup`: Gather facts about remote systems.
  - `ping`: Test connectivity to hosts.
  - `command`: Run commands on remote nodes.
  - `shell`: Run shell commands on remote nodes.
  - `raw`: Execute raw commands without a shell.
  - `debug`: Print debug messages in playbooks.

---

### **9. Containers**
- **Modules**:
  - `docker_container`: Manage Docker containers.
  - `docker_image`: Manage Docker images.
  - `kubernetes`: Manage Kubernetes resources.
  - `helm`: Deploy Helm charts to Kubernetes.

---

### **10. Security**
- **Modules**:
  - `selinux`: Manage SELinux policies.
  - `ufw`: Manage uncomplicated firewall rules.
  - `fail2ban`: Configure Fail2Ban jails.

---

### **11. Windows-Specific Modules**
- **Modules**:
  - `win_copy`: Copy files to Windows hosts.
  - `win_command`: Run commands on Windows.
  - `win_shell`: Run shell commands on Windows.
  - `win_user`: Manage Windows user accounts.
  - `win_feature`: Manage Windows features.

---

### **12. Cloud-Native and CI/CD**
- **Modules**:
  - `git`: Manage Git repositories.
  - `jenkins_job`: Manage Jenkins jobs.
  - `vault`: Interact with HashiCorp Vault.

---

### **13. Monitoring and Logging**
- **Modules**:
  - `nagios`: Manage Nagios monitoring configurations.
  - `zabbix_host`: Manage Zabbix hosts.
  - `grafana_datasource`: Manage Grafana data sources.

---

### **14. Utilities**
- **Modules**:
  - `assert`: Validate conditions or assumptions.
  - `wait_for`: Wait for a condition to be met (e.g., a port to be open).
  - `pause`: Pause execution.
  - `meta`: Perform meta operations like including roles or playbooks.

---

### **15. Custom Modules**
- You can create your own custom modules in Python, Bash, or any other language if the default modules don’t meet your requirements.

---

### **How to Find More Modules**
1. Run the command to list all available modules:
   ```bash
   ansible-doc -l
   ```
   This lists all modules installed on your system.

2. Get detailed documentation for a specific module:
   ```bash
   ansible-doc <module_name>
   ```
   Example:
   ```bash
   ansible-doc file
   ```

3. Visit the official module documentation:
   [Ansible Module Index](https://docs.ansible.com/ansible/latest/collections/index_module.html)

---

Let me know if you'd like examples for specific modules!

### Create ansible playbook and run it
Command to run: ansible-playbook -vvv -i inventory first-playbook.yml
Create a ansible playbook

```
---
- name: Install and start nginx
  hosts: all
  become: yes

  tasks:
    - name: Update package cache
      apt:
        update_cache: yes

    - name: Install nginx
      apt:
        name: nginx
        state: present

    - name: Start Nginx
      service:
        name: nginx
        state: started
        enabled: yes

```

Writing inventory file
```
[webserver]
172.31.10.42

[dbserver]


```
