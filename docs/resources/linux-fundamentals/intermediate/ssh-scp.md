# Connect Remotely with SSH

SSH is a secure client / server protocol used to connect to a remote host, and is a fundamental technology to 
be familiar with.  


## Requirements

What is needed: 

- Server running (listening)
- Client application:
	- openssh - *nix
	- terminal / iTerm2 - macOS
	- Putty - Windows


## Credentials

Configurations can require either a Username & Password _or_ a cryptographically matched pair of   keys. Public Key Infrastructure (PKI) can be a deep topic, but at a high level the _server holds a Public key_, while the **client holds a Private key**

1. Public Key  - share with the world
	- example: `~/.ssh/id_ed25519.pub`

2. Private Key - Close hold (_NEVER_ share)
	- example: `~/.ssh/id_ed25519`


### The agent

The ssh agent is a helper program that keeps track of user keys and passphrases. The agent can:  

- handle passwords for SSH private keys.
- make working with passphrase-protected keys easier

Examples:

- `eval “$(ssh-agent -s)”` - shell command to ensure agent is running
- `ssh-add -l` - list all active keys in agent
- `ssh-add /path/to/privatekey` - add a key to agent


## Built-in Commands

- `ssh-keygen` - generate keypair
- `ssh-copy-id` - securely copy key to remote host


## Basic Workflow


### Key Generation

Let's generate a keypair using newer elliptic curve crypto (smaller and stronger):

- `ssh-keygen -t ed25519 -a 100 -C "A Comment goes here"`
	- `-t` - type of key
	- `-a` - Key Derivation Function
	- `-C` - comment to replace the default


### Copying Keys

Now it's time to get the public key to remote for password-free ssh operations:

- `ssh-copy-id -i ~/.ssh/<KEY> user@host` - pub key place in default ~/.ssh/authorized_keys



### SSH Permissions

SSH is very particular with permissions, and should be your first troubleshooting step.  

	```
	-rw-------. 1 student student  393 Dec 27 23:07 authorized_keys
	-rw-r--r--. 1 student student   80 Dec 29 03:47 config
	-rw-------. 1 student student  411 Dec 28 19:34 id_ed25519
	-rw-r--r--. 1 student student  101 Dec 28 19:34 id_ed25519.pub
	-rw-------. 1 student student 1675 Dec 22 19:11 id_rsa
	-rw-r--r--. 1 student student  449 Dec 22 19:11 id_rsa.pub
	-rw-r--r--. 1 student student  342 Dec 29 03:21 known_hosts
	```


### Config File

With password-less ssh working, you can make things even easier by creating an ssh config file 
to hold "aliases".  

1. `vim ~/.ssh/config` - create or edit config file
2. example contents:  

	```
	Host remote
	HostName 1.2.3.4
	User <REMOTE_USER>
	IdentityFile ~/.ssh/id_ed25519
	```

3. `chmod 600 ~/.ssh/config` - update permissions


## SCP - Moving Files

SCP (secure copy) can be used to either _push file(s) from local to a remote host_, or **PULL file(s) 
in from a remote host to local**.


- `scp ./file user@server:/some/remote/dir/`
- PUSH file from local to remote host:

- `scp user@server:/remote/dir/file .`
    - PULL in file from remote host to local box:

- Common options include:
	- `-P` - specify port
	- `-r` - recursively copy (folders)
	- `-v` - verbose output (troubleshooting)



