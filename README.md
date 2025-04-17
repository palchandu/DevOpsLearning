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

## [Ansible](https://docs.ansible.com/) 
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

From above we learned basic but

- perfect so what we have done we have also executed our first ansible Playbook

- now what are the next things to learn in ansible once you learn this you need to

- understand that okay so I wrote my answerable playbook and this is looking very simple I learned ansible completely

- no the reason here is this is a very basic installation right we just installed

- engineic and we just started the in the next service but there are cases where you want to use your ansible playbooks


- to configure your kubernetes cluster okay so this is a very classic example let me tell you what I wanted to uh what

- usually people do in real time organizations let's say kubernetes.yml

- okay so the task here is create

- three ec2 instances on AWS okay and

- configure one of those
- ec2 instances as master and configure and two other ec2 instances as worker

- okay so what is the task create three ec2 instances on AWS configure one ec2

- instance as master and configure two ec2 instances as worker so for that what usually people or what usually develops


- okay so what is the task create three ec2 instances on AWS configure one ec2

- instance as master and configure two ec2 instances as worker so for that what usually people or what usually develops

- engine is test is for this uh we use terraform okay and for the two other tasks we use ansible so this is uh you

- done using ansible and this is also done using ansible so people might ask can't we do this using uh ansible we can do

- that okay so we can always do uh the installation or uh stuff like creation

- using ansible as well but terraform is a tool that is specifically designed for that purposes okay you can create ec2

- instances using ansible as well uh it's like for example if you want to purchase movie tickets okay you can do it through

- bookmyshow as well and you can do it through paytm as well but you would always go for the best option right so

- the best option here in this case is terraform so terraform is an infrastructure management tool or it's a

- instruction as code tool so that's why uh whenever you wanted to create anything with respect to infrastructure

- go with terraform so uh devops Engineers usually create these ec2 instances using terraform and perform these two actions

- using ansible now if these two actions cannot be written in one one simple Playbook right for example if you look

- at our first playbook.yaml this has only two tasks but if you want to configure both your kubernetes control plane as

- well as your kubernetes data plane or Master as well as your worker nodes your playbook will become very huge okay

- so almost you will have some 50 to 60 tasks and if you start writing this entire 50 to 60 tasks in one

- playbook.aml file it will be impossible to read okay so for that very own reason

- what ansible has done and there will be lot of variables and there will be lot of uh configuration files you have to

- handle some errors right to avoid that uh specific kind of problems what

- ansible has done is it has come up with a concept called ansible roles okay what

- is that ansible roles now what is ansible rules so ansible

- rules is nothing but like you know in a very simple terminology if I have to explain your ansible roles ansible roles

- is efficient way of writing ansible playbooks that will only improve your efficiency to write complex playbooks

- okay the best example that you can do that you can give is whenever some interviewer interviewer is asking you

- this question you can simply explain them that okay let's say I want to configure a kubernetes using ansible so

- it will have close to some 50 to 60 tasks and you have a lot of variables

- you have lot of parameters you have certificates right you have secrets that you have to configure while creating

- this kubernetes cluster so for that very own reason if you try to do it with rules like you can segregate each and

- everything and you can properly structure your ansible playbooks so that's why the concept of roles is

- introduced so if you want to start playing with rules okay what you can simply do is you

- can use this command called ansible Galaxy okay and then you can say initialize okay ansible Galaxy role init

- stands for initialize and just start saying that uh I want to create a role

- for kubernetes okay so let me uh create a folder for this before that

- okay so this is my second playbook for example my second Playbook is to configure kubernetes so what I'll do is

- I'll do ansible hyphen Galaxy role init kubernetes now let us see what

- happens as you execute this command okay what happened is ansible said that role

- kubernetes was created successfully what is that let me do LS so if you see LS if

- you do LS you'll see that there is a folder called kubernetes that is created let me open that folder and see what is

- inside that okay LS

- kubernetes okay you will see bunch of files that are created for you this is the concept of roles okay if you do LS

- hyphen LTR and see what is inside each and every folder okay so whenever you

- execute this command ansible creates you bunch of files and folders okay and

- using these files and folders you can structure your ansible playbooks okay so

- you have templates you have files you have readme where you can explain what this Playbook is and what are the rules

- and responsibilities of this Playbook you can create tasks like previously we used to write tasks in the playbook.yaml

- right whereas here you will use the task and then you have handlers you have

- tests vars defaults and meta I'll explain you each and every of this thing don't worry but till now what I wanted

- to explain you is that whenever you want to write some complicated playbooks okay what what you would do is you will start

- using the ansible Galaxy command to create roles and what happens if you

- create roles is you can write structured and efficient ansible playbooks okay so

- to write this entire playbooks in this live session uh it will get slightly complicated so that that's the reason

- why I have put everything on my GitHub repository okay so if you see here this

- is my GitHub repository I I already know that most of you are following me on GitHub and if you are not then I have



Create 3 EC2 instances on AWS (Terraform)
Configure 1 of those EC2 instances as master (Ansible)
Configure 2 other EC2 instances as worker (Ansible)

### **What is Dynamic Inventory in Ansible?**

In Ansible, **Dynamic Inventory** refers to an inventory source that is generated dynamically at runtime rather than being manually defined in a static file. It is used to manage environments where the list of hosts changes frequently, such as in cloud-based or containerized infrastructure.

Instead of using a fixed inventory file with predefined hostnames and groups, a dynamic inventory dynamically queries information from external sources like cloud providers, APIs, or databases to fetch the current list of hosts.

---

### **Why Use Dynamic Inventory?**

Dynamic Inventory is particularly useful in the following scenarios:
1. **Cloud Environments**:
   - Hosts (e.g., EC2 instances, Azure VMs) are created and terminated dynamically, making static inventory impractical.
   
2. **Scalability**:
   - Automatically adapts to changes in infrastructure, such as adding or removing servers.

3. **Centralized Management**:
   - Pulls live data from APIs, databases, or other external sources, ensuring that the inventory is always up-to-date.

4. **Auto-Grouping**:
   - Automatically categorizes hosts based on metadata like tags, regions, or other attributes.

---

### **How Does Dynamic Inventory Work?**

Dynamic Inventory uses **inventory scripts** or **plugins** to communicate with an external source (e.g., a cloud provider API) and generate the inventory dynamically. Ansible queries this inventory at runtime, retrieves the list of hosts, and executes the playbooks accordingly.

---

### **Examples of Dynamic Inventory**

#### **1. AWS EC2 Dynamic Inventory**
   - Ansible can dynamically fetch inventory from AWS using the `aws_ec2` plugin or an inventory script.

   Example Configuration (`aws_ec2.yml`):
   ```yaml
   plugin: amazon.aws.aws_ec2
   regions:
     - us-east-1
   filters:
     tag:Environment: Production
   keyed_groups:
     - key: tags.Environment
       prefix: env_
   ```

   Command to Fetch Inventory:
   ```bash
   ansible-inventory -i aws_ec2.yml --list
   ```

---

#### **2. Kubernetes Dynamic Inventory**
   - Ansible can dynamically query Kubernetes clusters to fetch a list of pods or nodes.

   Example Configuration (`k8s_inventory.yml`):
   ```yaml
   plugin: community.kubernetes
   connections:
     - kubeconfig: ~/.kube/config
   resources:
     - pods
   ```

---

### **Benefits of Dynamic Inventory**

1. **Live Updates**:
   - Always reflects the current state of infrastructure.
   
2. **Automation**:
   - Eliminates the need to manually update inventory files.

3. **Integration**:
   - Works seamlessly with cloud providers (AWS, GCP, Azure), orchestration tools (Kubernetes), and other dynamic environments.

4. **Flexibility**:
   - Can be customized to query any external source, such as a custom API or database.

---

### **How to Enable and Use Dynamic Inventory**

1. **Install Required Plugins**:
   - Ensure that the appropriate plugin (e.g., `amazon.aws`) or library (e.g., `boto3` for AWS) is installed.

   Example:
   ```bash
   pip install boto3
   ```

2. **Create a Plugin Configuration File**:
   - Write a YAML file specifying the plugin and its configuration.

3. **Test the Inventory**:
   - Use the `ansible-inventory` command to validate the inventory.

   Example:
   ```bash
   ansible-inventory -i dynamic_inventory.yml --list
   ```

4. **Use in Playbooks**:
   - Specify the dynamic inventory file when running a playbook.

   Example:
   ```bash
   ansible-playbook -i dynamic_inventory.yml site.yml
   ```

---

### **Static vs Dynamic Inventory**

| **Feature**          | **Static Inventory**                       | **Dynamic Inventory**                       |
|-----------------------|--------------------------------------------|---------------------------------------------|
| **Definition**        | Manually created inventory file.           | Automatically generated inventory at runtime. |
| **Flexibility**       | Requires manual updates.                   | Automatically adapts to changes in infrastructure. |
| **Use Case**          | Small, fixed environments.                 | Dynamic, cloud-based, or containerized environments. |
| **Examples**          | A small set of servers in a local datacenter. | AWS EC2 instances, Kubernetes pods, Azure VMs. |

---

### **Conclusion**

Dynamic Inventory is essential for managing modern infrastructure where hosts frequently change. It automates the process of inventory creation and ensures that your Ansible playbooks always have up-to-date information about the target systems. With dynamic inventory, Ansible becomes a powerful tool for managing cloud resources, containers, and large-scale environments.

## [Terraform](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)

### Terraform Examples
- [https://support.cloud.tamu.edu/automate/terraform/tfexample/](https://support.cloud.tamu.edu/automate/terraform/tfexample/)

  
Installing Terraform on Ubuntu involves a few steps. Terraform is distributed as a single binary, and you can install it directly from HashiCorp's official repository.

---

### **Step 1: Update Your System**
First, ensure your system is up-to-date:
```bash
sudo apt update && sudo apt upgrade -y
```

---

### **Step 2: Install Required Dependencies**
Install `gnupg`, `software-properties-common`, and `curl` to fetch and verify Terraform's repository:
```bash
sudo apt install -y gnupg software-properties-common curl
```

---

### **Step 3: Add HashiCorp's Official GPG Key**
To ensure secure installation, add HashiCorp's GPG public key:
```bash
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
```

---

### **Step 4: Add the HashiCorp Repository**
Add the HashiCorp repository to your system's APT sources list:
```bash
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
```

---

### **Step 5: Update APT and Install Terraform**
Update APT and install Terraform using the following commands:
```bash
sudo apt update
sudo apt install -y terraform
```

---

### **Step 6: Verify Terraform Installation**
Check the installed Terraform version to verify it is installed correctly:
```bash
terraform --version
```

---

### **Step 7 (Optional): Enable Tab Auto-Completion**
You can enable tab completion for Terraform commands by adding the following to your shell configuration file:
```bash
terraform -install-autocomplete
```

---

### **Terraform Installation is Complete**
You can now start using Terraform. For example:
1. Create a working directory:
   ```bash
   mkdir terraform-project
   cd terraform-project
   ```

2. Write your first Terraform configuration file (e.g., `main.tf`).

3. Initialize Terraform in your project directory:
   ```bash
   terraform init
   ```

Let me know if you face any issues during the installation process!

#### Actually terraform runs on four commands
- Run terraform init to initialize the working directory and download the AWS provider plugin.
- Run terraform plan to preview the changes Terraform will make.
- Run terraform apply to create the EC2 instance.
- Run terraform destroy to delete the EC2 instance.

once you install the terraform you should understand that terraform basically runs on four commands one is

terraform init one is terraform plan which we discussed about then terraform apply and terraform test drive we talked

