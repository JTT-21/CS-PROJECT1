## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Network Diagram](https://github.com/JTT-21/CS-PROJECT1/blob/main/Diagram/Cloud_NW_project.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the yml playbook file may be used to install only certain pieces of it, such as python. 

  [myplaybook](https://github.com/JTT-21/CS-PROJECT1/blob/main/Ansible/myplaybook.yml)
  [elk server](https://github.com/JTT-21/CS-PROJECT1/blob/main/Ansible/elk.yml)
  [filebeat](https://github.com/JTT-21/CS-PROJECT1/blob/main/Ansible/filebeat.yml)
  [metricbeat](https://github.com/JTT-21/CS-PROJECT1/blob/main/Ansible/metricbeat.yml)
This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
- Beats in Use
- Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.

What aspect of security do load balancers protect? Availabiilty of data in case of a DDOS attack.  What is the advantage of a jump box?_ The jumpbox prevents unwanted access from the public as it is the only means of access to the vms inside the virtual networks. It is the single point of access.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the network logs and system performance.
- Filebeat forwards and centralises log data. It collects log events and forwards them to elasticsearch or logstash for indexing.
-Metricbeats help monitor servers by collecting metrics from the system and its services running on the server. Eg. Apache, MySQL, Nginx, HAProxy

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name       	| Function         	| IP Address 	  | Operating System 	|
|------------	|------------------	|------------	  |------------------	|
| Jump Box   	| Gateway          	| 10.0.0.7      | Linux            	|
| Elk Server 	| Elk Server       	| 10.1.0.4   	  | Linux            	|
| Web-1      	| DVWA             	| 10.0.0.8   	  | Linux            	|
| Web-2      	| DVWA             	| 10.0.0.9   	  | Linux            	|
| Web-3      	| Redundant Server 	| 10.0.0.10   	| Linux            	|

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the host machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses: 
- 45.248.78.204

Machines within the network can only be accessed by the Jump Box.
- The Elk VM was access via the Jump Box VM only. Its Public IP address is: 65.52.120.127 

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | 45.248.78.204        |
| Elk      | Yes                 | 10.0.0.7             |
| Web VMS  | No                  | 10.0.0.7             |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it automates the set up of multiple VMS. It can easily be deployed again and again. 


The playbook implements the following tasks:

- Install Docker.io on Jumpbox VM
- Install Python 3
- Download docker cotinaer sebp/elk:761
- Configure container to have 5601:5601, 9200:9200 and 5044:5044 mappings
- Start Container

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![Docker PS](https://github.com/JTT-21/CS-PROJECT1/blob/main/Diagram/Elk-docker-ps.JPG)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- 10.0.0.8
- 10.0.0.9
- 10.0.0.10

We have installed the following Beats on these machines:

- Filebeat and Metricbeat

These Beats allow us to collect the following information from each machine:
- Filebeat monitors log files and collects log evens from the Web VMs set up. It then forwards it to Elasticsearch for indexing.
- Metricbeat on the otherhand collects metrics and statistics from the Web Servers OS and services, like Apache.
### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the configuration file to /etc/ansible.
- Update the hosts file to include the Elk server IP
- Run the playbook, and navigate to the Elk server to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? The YML file is the playbook. It is copied to /etc/ansible folder.
- The hosts file is updated to make the ansible playbook to run on a specific machine. This is specified within the playbook yml file when specifying hosts.

- _Which URL do you navigate to in order to check that the ELK server is running? The url file to navigate to to check Elk is running is http://20.84.57.178:5601/app/kibana
