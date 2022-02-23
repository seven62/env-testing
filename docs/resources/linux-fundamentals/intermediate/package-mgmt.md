<!-- TODO add menu to select rhel / deb -->

# Package Management

Getting additional software can be done many ways, from compiling source code to downloading 
individual package files. But it's much easier to let your OS Package Manager handle things for you.  


## Yum


### Basics

Yum (Yellowdog Update Manager) is the default package manager for the downstream operating 
systems in the RHEL family, namely Centos. It handles package repositories, dependency resolution, 
software groups, and keeps a transactional record of changes.

Multiple repositories (sources) can be added to a system. For example, the base repository for 
Centos is hosted at http://mirror.centos.org/centos/. To view the current known repos, you have 
a few options:  

- `ls -l /etc/yum.repos.d/` - repo files are stored here

```
└── yum.repos.d/
    ├── CentOS-Base.repo
    ├── CentOS-CR.repo
    ├── CentOS-Debuginfo.repo
    ├── CentOS-Vault.repo
    ├── epel.repo
    └── epel-testing.repo
```

- using the builtin commands
  - `yum repolist`
  - `yum repoinfo`


### Process Overview

1. Client contacts known repositories for changes
2. Updates local list of packages
3. Select package to install
4. Yum checks for dependencies
5. Yum dloads required packages and installs
6. Yum updates local RPM database


### Maintainance

- `sudo yum check-update`
- `sudo yum update`


### Getting Info

- `sudo yum info` - shows installed pkgs
- `sudo yum list installed`
- `sudo yum list updates`
- `sudo yum list available 'package*'`
- `sudo yum deplist pkg - shows dependencies`

- `yum group list` - show available groups
- `yum group info "Development Tools"` - show group details


### Searching

- `yum search pkg`
- `yum search all pkg`
- `yum list all | grep pkg`
- `yum provides`


### Installing

- `sudo yum install -y pkg`
- `sudo yum reinstall`
- `sudo yum upgrade`



### Uninstalling

- `sudo yum remove` - removes package only
- `sudo yum autoremove` - removes package and deps


### History

- `yum history`

    ```
    ID     | Login user               | Date and time    | Action(s)      | Altered
    -------------------------------------------------------------------------------
        18 | admin <admin>            | 2019-08-07 00:24 | Install        |    1
        17 | admin <admin>            | 2019-08-07 00:23 | Erase          |    1 EE
        16 | admin <admin>            | 2019-08-07 00:08 | Erase          |    1 EE
        15 | admin <admin>            | 2019-08-06 23:52 | Install        |    5
        14 | admin <admin>            | 2019-06-25 12:46 | Install        |    2
        13 | admin <admin>            | 2019-06-25 12:45 | Install        |   10
    ```

    - `ID` — an integer value that identifies a particular transaction
    - `Login user` — the name of the user to initiate a transaction
    - `Date and time` — the date and time when a transaction was issued
    - `Action(s)` — a list of actions that were performed
    - `Altered` — the number of packages that were affected by transaction

<br>
- `yum history undo/redo <ID#>` - use ID number to uninstall or reinstall



### Package Groups

- `yum grouplist` - list available groups
- `yum group install group-name` - install group
- `yum install @group-name` - install group