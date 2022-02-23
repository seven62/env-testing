# Networking

- `ping` - ICMP tool to test connectivity
    - ex: `ping -c 3 example.com`


- `ip addr` - display address, routing, devices, tunnels
    - ex: `ip a show en0`

- `ss` - socket status, displays network connections
    - ex: `ss -uplant`
        - shows “the works”
    - ex: `ss -lnt` 
        - listening tcp

- `/etc/hosts` - hosts config (local "dns")
- `/etc/resolv.conf` - nameserver configuration
