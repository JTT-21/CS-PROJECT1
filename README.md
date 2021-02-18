## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.


mxfile host="app.diagrams.net" modified="2021-02-16T11:25:34.627Z" agent="5.0 (Windows)" etag="36T1QRQPo1us-0r0mQ4A" version="14.3.2" type="device"><diagram id="lG21uUNqAuXamo1UPBtS" name="Page-1">7VvbcuI4EP0aHseliy1Lj7lOpmpma2ozW1u1L1sKCPCOsTy2SGC/ftvYBizhBMItsPCQmNbFsk+f7tax6dCb0eRzJtPhN91TcYeg3qRDbzuEYEQ5/Css09IS+GFpGGRRr+q0MDxG/6p6ZGUdRz2VNzoarWMTpU1jVyeJ6pqGTWaZfml26+u4edZUDpRjeOzK2LX+GfXMsLTyAC3sDyoaDOszY1S1jGTduTLkQ9nTL0smetehN5nWpjwaTW5UXNy8+r6U4+5bWucLy1Ri1hkQXKcPv4y+i7/e/qXDn3L6bH77VMPzLONxdcXVas20vgWZHic9VcyCOvT6ZRgZ9ZjKbtH6AqCDbWhGMXzDcDi/ytkXk+mf6kbHOptNRdHsAy39KI6X7P3ZB+yxfFLxd51HJtIJtHXh4hR0un5WmYkAlq9WhydtjB5BBxlHg5UjrqoGo4ulVpcLbWrSeiPxHB7wa6VHymRT6FINYAR5QTmocmqK55aXhZPg2kmGyw5CK6OsHHMwn3+BHRxU8G0CZXiBclMoQ/4BgST0AuSmQAqBPh6QLo4PP358B8vv6tdY5SYvTpr0ZoY81UkOic4GWvUgHVVfE53Av+sm9jozQz3QCcCgi7s5A/kfZcy0SqZybLTlD0Zm5qpIjgU2sczzqFub76O47laupVjA66DAevU466pX7oRfZW6ZDZR5pR+mr6L8CXkIB9VJMxVLEz03F7cKw2q67zqCZS+oT5oegznyGGYoxD6kd/jrN2cs115Nspxm63nrjrrfz5VxnGd+Ne/3J9/xpz9ylbk+08bLkm0yT8tCqR9NCi9a9gybn3MmN6NG5YgOvfXYxFEC3epaDJXRJy0WNpoMihLR60YmiybeeLZ0Kzi1hpodhAjiEy9shnvsIydGML8OHMtBIgj2FCMCB9MvyTNcka7mPr9YwLaMBVvynnArU5BwLaLvisTMAfybTnQcmSHceIJupZFPMldrk3qRbDfgdRkJdk/qXr16i9e7oG/QxC0gLneB4au4u6/87hbcV2NYynnSlq9JW7Yla7dCxN3NloigR5WB950mqdJMT6Z/5+UVtJfpuyacT+1AyRzChWwV4cS+CCdWFkBnSrhaAfvYjKtX6WBy0pQDjqnDMy6wCedmuBCvoFu4L2xxWzj9nMmiOrq/VcnrZeqCaXcL60myka7JRn5UNpI2Nn5J+tpB6pxxwOioQLjazyPs6aCsR1dpunZQ3NeOPVZ9s2FInKhEpumGQdHez2dl1NrJfoCGtgpf7+QaBYobL7nYF+gXgWYbRLmtyB1fncGuPHOWEu5BFFceIA9qGkExDUngi9XkXVtvrWf1hSdE6CMsGAp5LdvWPiQs1ygTzFFlXOxKQJfcsNPcwAlpOhdd9TTosLnBFYsu+6R3wssYWgfeg26VXOWpXcc/CWj3KOVyyu0nMQE9upqLXXXpIh6+F2KMCLMxbovCB5UQiatpnNsOuYpxb++QtxUOWwoyxKyNmR9gj/to/rGmfLMkq8O+9Y6HD/UkzBYQRnEQcrvS2/NzPNL29Of8xLG3PUnsx5O4b2/xGXuf7+C5181nCrwDO4xbItxkqgc3O5LxaSaXPdYIGPnUKRLQ0YsE4hYJHcLiYt/Si57hcFAcVhmlbnnK6obaAude6r5ihvWHXvymuTfg3IoZwQoZ6cBeQ101+HTfFHgzG5BtH4G0hfDQUXwFgB34UACIQFCB+PuSg/CdV0uKwkIw32chFBjWUvecJ+hqFfk0nWV31SppqTEqDJFHfcEaMO5GtWT2+2I89HyYhzEukOBkU31xXiU39c8AFTImJ0iAKzNC1/M5gEpOl7qlRYe8/WJCZJXQzd+MwEE548E1Ufr/ew8S7ydMcoY92CoJH0pcijFp6uHU3livLbMH3AuL8VhQxGkQNv1IWG9Lt9DgbXeBr4ufRJXdFz8so3f/AQ==</diagram></mxfile>

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the yml playbook file may be used to install only certain pieces of it, such as Filebeat.

  - _TODO: Enter the playbook file._

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
- _TODO: What aspect of security do load balancers protect? Availabiilty of data in case of a DDOS attack.  What is the advantage of a jump box?_ The jumpbox prevents unwanted access from the public as it is the only means of access to the vms inside the virtual networks. It is the single point of access.

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
- 

Machines within the network can only be accessed by the Jump Box.
- The Elk VM was access via the Jump Box VM only. Its Public IP address is: 65.52.120.127 

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | 45.248.78.204        |
| Elk      | Yes                 | 10.0.0.7             |
| Web VMS  | No                  | 10.0.0.7       |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it automates the set up of multiple VMS. It can easily be deployed again and again. 


The playbook implements the following tasks:

- Install Docker.io on Jumpbox VM
- Install Python 3
- Download docker cotinaer sebp/elk:761
- Configure container to have 5601:5601, 9200:9200 and 5044:5044 mappings
- Start Container

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.




![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

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
