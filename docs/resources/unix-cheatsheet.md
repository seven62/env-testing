
## Getting Help

| **Command**  | **Description**                     | **Example**                      |
|:-------------|:------------------------------------|----------------------------------|
| man          | Read the manual                     | `man bash                       `|
| -h / --help  | Help for specific command           | `ls --help                      `|
| find         | Find files                          | `find /etc/ -name "sshd_config" `|
| whereis      | Searches man pages and source files | `whereis sshd                   `|
| which        | Search user $PATH for program       | `which python                   `|


## Navigation

| **Command** | **Description**                               | **Example**               |
|:------------|:----------------------------------------------|---------------------------|
| pwd         | Displays current working directory            | `pwd                     `|
| ls          | List directory contents                       | `ls -lnp                 `|
| tree        | Display directory structure in tree structure | `tree /etc/elasticsearch `|
| cd          | Change directory                              | `cd /etc/yum.repos.d     `|



## Directory Aliases

| **Command**     | **Description**                             | **Example**       |
|:----------------|:--------------------------------------------|-------------------|
| . (dot)         | Current working directory or "here"         | `ls .            `|
| .. (double dot) | One level up from current working directory | `cd ../home/user `|
| ~ (tilde)       | Home directory path for current user        | `cd ~/.ssh       `|
| - (dash)        | Last previous working directory             | `cd -            `|



## Bash Shortcuts

| **Command**     | **Description**                      | **Example**                 |
|:----------------|:-------------------------------------|-----------------------------|
| up / down arrow | Access previous command history      | `---`                       |
| ctrl + a        | Move cursor to beginning of prompt   | `---`                       |
| ctrl + e        | Move cursor to end of prompt         | `---`                       |
| ctrl + u        | Delete all to the left of cursor     | `---`                       |
| ctrl + k        | Delete all to the right of cursor    | `---`                       |
| ctrl + w        | Delete one "word" to the left        | `---`                       |
| ctrl + <        | Jump to the left by argument         | `---`                       |
| ctrl + >        | Jump to the right by argument        | `---`                       |
| `<TAB>`         | Completes filenames paths commands   | `---`                       |
| ctrl + r        | Reverse search history               | `---`                       |
| ctrl + g        | Exit reverse search prompt           | `---`                       |
| !!              | Repeat last command                  | `sudo !!                  ` |
| history         | Display list of commands run         | `history | grep "restart" ` |
| !##             | Rerun specific history command entry | `!214                     ` |


## Networking

| **Command** | **Description**                        | **Example**                             |
|:------------|:---------------------------------------|-----------------------------------------|
|     ip     | Display routing devices and tunnels     | `ip a sh dev eth0                      `|
|     ss     | Socket statics - show listening ports   | `ss -lnt                               `|
|    ping    | Connectivity test via ICMP              | `ping 192.168.1.1                      `|
| traceroute | Trace packet route to a host            | `traceroute 9.9.9.9                    `|
|     dig    | Dns lookup tool (req. bind-utils)       | `dig @9.9.9.9 elastic.co               `|
|     ssh    | Secure shell remote login               | `ssh user@192.168.1.100                `|
|     scp    | Secure copy to push / pull remote files | `scp ./archive user@192.168.1.100:/tmp `|
|            |                                         | `scp user@192.168.1.100:~/archive .    `|
|   tcpdump  | Dump packet activity on an interface    | `sudo tcpdump -i eth0                  `|
|    nmtui   | Terminal gui to configure networking    | `sudo nmtui                            `|



## System Information

| **Command** | **Description**                          | **Example**     |
|:------------|:-----------------------------------------|-----------------|
| whoami      | Print the current user id and name       | `whoami        `|
| hostname    | Print or change system hostname          | `hostname -f   `|
| date        | Display or change date and time          | `TZ='UTC' date `|
| uptime      | Display time since last startup / reboot | `uptime        `|
| users       | List users currently logged in           | `users         `|
| uname       | Print general system information         | `uname -a      `|
| df          | Show disk usage                          | `df -h         `|
| du          | Show directory space usage               | `du -sh <path> `|
| free        | Show memory and swap usage               | `free -h       `|


## Users & Permissions
| **Command** | **Description**                | **Example**                      |
|:------------|:-------------------------------|----------------------------------|
| id          | Print user and group ids       | `id                             `|
| useradd     | Create new user account        | `useradd <newuser>              `|
| passwd      | Modify a user password         | `passwd <newuser>               `|
| usermod     | Modify a user account          | `usermod -aG wheel <newuser>    `|
| userdel     | Delete a user account          | `userdel <newuser>              `|
| groups      | Print a users group membership | `groups                         `|
| groupadd    | Create new privilege group     | `groupadd -g 1011 <newgroup>    `|
| groupmod    | Modify a group                 | `groupmod -n <newname> oldname  `|
| groupdel    | Delete a group                 | `groupdel <groupname>           `|
| chown       | Change file owner / group      | `chown user:www-data <filename> `|
| chmod       | Change access permissions      | `chmod 0700 <filename>          `|
|             |                                | `chmod -R 755 <dirname>         `|
|             |                                | `chmod u=rwx,g=r,o= <filename>  `|


## Sorting & Filtering

| **Command** | **Description**                                    | **Example**                                    |
|:------------|:-------------------------------------------------:|------------------------------------------------|
| \| (pipe)   | Passes output from one command to another         | `cat /var/log/secure \| grep "opened"        ` |
| grep        | Search file(s) for lines that match a pattern     | `grep "opened" /var/log/secure               ` |
| egrep       | Search file(s) for lines that match an expression | `cat /var/log/secure \| egrep '^Feb 11'      ` |
| zgrep       | Search compressed file(s) for pattern matches     | `zgrep "search" <archivefile>                ` |
| sort        | Sort text files                                   | `cat <filename> \| sort                      ` |
| wc          | Print byte, word, and line counts                 | `cat <filename> \| wc                        ` |
| cut         | Divide a file into several parts                  | `cat <filename \| grep "search" \| cut -f 6-8` |
| uniq        | Dniquify files                                    | `cat <filename> \| sort                      ` |


## Reading & Changing Files

| **Command** | **Description**                                  | **Example**                  |
|:------------|:-------------------------------------------------|------------------------------|
| cat         | Concatenate and print contents of files          | `cat /etc/hosts            ` |
| less        | Display output one screen at a time              | `less ./file.txt           ` |
| tail        | Output the last part of file (-f to live follow) | `tail /var/log/secure      ` |
| touch       | Create a new (empty) file or update timestamp    | `touch <filename>          ` |
| nano        | Create or edit file in nano cli editor           | `nano <filename>           ` |
| vim         | Create or edit file in vim cli editor            | `vim <filename>            ` |
| rm          | Remove (delete) file                             | `rm <filename>             ` |
| rm -rf      | Recursively remove (delete) folders              | `rm -f <folder>            ` |
| mkdir       | Create new directory                             | `mkdir <newfolder>         ` |
| rmdir       | Remove (delete) empty directory                  | `rmdir <emptyfolder>       ` |
| ln          | Create hard link                                 | `ln <sourcefile> hardlink  ` |
| ln -s       | Create soft (symbolic) link                      | `ln -s <sourcefile> symlink` |



## Process Monitoring

| **Command**    | **Description**                                 | **Example**      |
|:---------------|:------------------------------------------------|------------------|
| who            | Display who is logged in                        | `who -H`         |
| w              | Display who is logged in and what they're doing | `w <user>`       |
| ps             | Process status                                  | `ps -aux`        |
| pidof          | Find the process id of a given program          | `pidof firefox`  |
| kill           | Kill process                                    | `kill -9 2040`   |
| top            | List running processes                          | `top`            |
| htop           | Interactive process viewer (needs installed)    | `htop`           |
| sudo shutdown  | Shutdown system                                 | `sudo shutdown`  |
| sudo reboot    | Reboot system                                   | `sudo reboot`    |
| sudo systemctl | Command to interact with systemd                | `sudo systemctl` |