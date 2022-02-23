# Managing Services with Systemd

Systemd is the modern standard for managing system daemons/services. It has widely replaced 
other startup sequences and runlevels. It is the first `PID` to start, and logs events to journald.


## Terminology

- systemd - daemon
- systemctl - control action
- target - collection of services
<!-- - units - 
- device - 
- socket -  -->


## Getting Info

- `sudo systemctl list-units --all` - display all units files
- `sudo systemctl list-unit-files --type=service` - all services and current status
- `sudo systemctl list-dependencies <service>` - show dependencies for a service
- `sudo systemctl mask <service>` - masking "turns off" a service
    - `mask` / `unmask`
    - deal with conflicting services
    - services that use the same port etc.


## Basic Usage

### General

Systemd can be used to perform high-level system tasks.

- `default` - Enter system default mode
- `rescue` - Enter system rescue mode
- `emergency` - Enter system emergency mode
- `halt` - Shut down and halt the system
- `poweroff` - Shut down and poweroff system
- `reboot [ARG]` - Shut down and reboot system
- `suspend` - Suspend the system
- `hibernate` - Hibernate the system
- `hybrid-sleep` - Hibernate and suspend system


### Actions

> `sudo systemctl <ACTION> <SERVICE>`

The following actions are available: 

- `start` - start a stopped (or previously failed) svc
- `stop` - stop a running svc
- `restart` - turn a svc all the off and back on
- `reload` - quickly re-read new config (without turning off)
- `enable` - set a service to start on boot
- `disable` - prevent a service starting on boot

For example, let's restart the Elasticsearch service: 

- `sudo systemctl restart elasticsearch`

    ```
    ● sshd.service - OpenSSH server daemon
      Loaded: loaded (/usr/lib/systemd/system/sshd.service; enabled; vendor preset: enabled)
      Active: active (running) since Thu 2019-08-01 21:26:30 UTC; 1 weeks 5 days ago
        Docs: man:sshd(8)
              man:sshd_config(5)
    Main PID: 6105 (sshd)
      CGroup: /system.slice/sshd.service
              └─6105 /usr/sbin/sshd -D

    Aug 01 21:26:30 es1 systemd[1]: Starting OpenSSH server daemon...
    Aug 01 21:26:30 es1 sshd[6105]: Server listening on 0.0.0.0 port 22.
    Aug 01 21:26:30 es1 sshd[6105]: Server listening on :: port 22.
    Aug 01 21:26:30 es1 systemd[1]: Started OpenSSH server daemon.
    ```

    - enabled - set to start at boot
    - active - current duration
    - docs - documentation sources
    - PID - process #


<!--

3 Sub section, lets cover each in detail. 

Unit, things related to this unit or service, like dependencies and description
Service, things that detail how this unit starts, stops, restarts and what type of process it is.
Install, things that will affect other units 


service files

Description
After
Before
Requires
Wants
Conflicts

Description - Meaningful description of the unit. Displayed as part of the output for the systemctl status command
After -	Define the order in which units are started. The unit starts only after the units specified in AFTER are active, unlike requires, After does not explicitly activate the specified units, 
Before - The Before option has the opposite functionality to AFTER
Requires - Configures dependencies on other units. The units listed in requires are activated together with the unit. If any of the required units fail , then this unit will fail
Wants - Configures weaker dependencies than requires. If any of the listed units do not start it will not stop this unit from starting.
Conflicts - Configures negative dependencies, an opposite option of Requires.

Alias
RequiredBy
WantedBy

Alias - Provides a space-separated list of additional names for the unit
RequiredBy - A list of units that depend on the unit. When this unit is enabled the units listed in RequiredBy gain a required dependency on the unit.
WantedBy - A list of units that weakly depend on the unit. When enabled the units listed in WantedBy gain a Want dependency on the unit. 

Type
Simple
Forking
Oneshot

ExecStart
ExecStop
ExecReload
Restart

Type - Configures the unit process startup type that affects the functionality of execstart and related options.
simple - Default value, process starts with execstart is the main process of the service
Forking - The process started with execstart spawns as child process that becomes the main process of the service. The parent process exits when the startup is complete
oneshot - Similar to simple, but the process exits before starting consequent units
ExecStart - Specifies commands or scripts to be executed when the unit is started.
ExecStop - Specified commands or scripts to be executed when the unit is stopped
ExecReload - Specifies commands or scripts to be executed when the unit is reloaded
Restart - When enabled the service is restarted after the process exits with the exception of a clean stop by the systemctl command. -->
