# Permissions


## Root and Sudo

- `sudo` - “substitute user and do”
- `su` - “switch user”


## Elevated User Groups

In the RHEL OS family, the sudo-enabled user group is called "wheel". In Ubuntu, 
it's "sudo".

- example: `usermod -aG sudo <USER>`


## Users & Permissions

- `chown` - change user / group ownership
    - example: `chown <USER> file.txt`
- `chmod` - change user / group permissions (mode)
    - example: `chmod 644 file.txt`
