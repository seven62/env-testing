# Firewalls

So you’ve got an Elastic Stack all perfectly configured, but for some reason it doesn’t work. Firewall 
rules can be a common gotcha. Here a few basics of the "Uncomplicated Firewall" (on Debian-based systems).  

### Enabling

- `sudo ufw enable` - turn it on
- `sudo systemctl status ufw.service` - verify


### Rules

- `sudo ufw allow 9200/tcp` - open Elasticsearch port
- `sudo ufw allow 5601/tcp comment 'accept Kibana'` - open Kibana port




<!-- RHEL
- ex: `firewall-cmd --permanent --add-port=<port>/<tcp|udp>`
- ex: `firewall-cmd --reload` -->
