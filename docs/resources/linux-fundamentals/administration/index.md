# Administration Basics


## Viewing Resources

- `top` 
    - similar to Windows task manager
    - PID, CPU, Memory, etc.
- `free` - amount of free and used memory
    - "free memory" - amount of memory currently not used for anything
    - "available memory" - amount of memory available for allocation


## Processes

- `ps` - get a list of running processes on the system
- `ps -fax` - view parent child relationship between programs
- `ps -euf` - view all processes running as root
- `ps -ef` - view all processes along with their user


### kill / pkill 

This command allows you to kill a running process based on PID/name. Typically, 
this needs to be run with "`sudo`" unless the process is owned by user.

Examples:

- `kill -9 <PID>`
- `pkill <PROC_NAME>`
