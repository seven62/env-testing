# Linux Shell Introduction


## Command Anatomy

<br>

| **command** | **[option]** | **arguement**         |
|:------------|:-------------|-----------------------|
| binary      | _how to run_ | _what to run against_ |
| `ls`        |              |                       |
| `ls`        | `-l`         |                       |
| `ls`        | `-lah`       | `/etc`                |


1. Command - program being run
1. Option - how to operate ( dash and letter, stacking, --longer-options )
1. Argument - what to operate on (like a filepath)


## Key Differences

There are some important differences to note when coming from a Windows environment:

1. Everything is a file
	- Ordinary Files
	- Directories
	- Special Files - hard / soft links etc.  

2. CaSe sEnSiTiVe!
	- "logfile.txt" is not the same as "Logfile.txt"  

2. /// FORWARD /// slashes
	- backslashes are used, but a more advanced topic  

2. File extensions don't matter
	- not required, but best practice to use


## File System

```
/bin 		binaries (points to /usr/bin)
/sbin 		admin binaries programs
/dev 		external devices are mounted (optical / hdd / ssd )
/etc		system and application configuration files
	elasticsearch/
	kibana/
	logstash/
/home		place for all user profile ~
/lib 		libraries of code
/tmp		temporary "permissions free" working space
/var		various files system uses
/var/log	logged events
/usr/		user apps / tools / libraries
/opt		optional binaries
```

## Absolute and Relative Paths

There are two types of filepaths when working in the terminal:  

1. Absolute
	- full path starting at root ( / )
	- path that always begins at / (root)  i.e. very “top” of filesystem
	- bottom line: if it starts with a “ / “ it’s an absolute file path
	- example: `/home/user/Documents/my-project`

2. Relative
	- relative to your current location in file system
	- example: `./Documents/my-project`


## Getting Help

Let's talk about how to help yourself. Here are some basic commands to get your bearings 
and help answer the basic questions of terminal life:  

### Surroundings

- `whoami` - print the current user id and name
- `hostname` - print or change system hostname
- `date` - display or change date and time
- `uname` - print general system information
- `cat /etc/*-release` - print out OS information
- `which` - Search user $PATH for program


### Man Pages (RTFM)

The `man` pages are built-in documentation and user manual. Your box is packed full of them, so the trick 
is that it just takes patience and being able to search for what your looking for.  

Let's look at an example workflow to get more information on how to use your current `bash` shell session:  

- `man bash` - opens the paginated manual
- `<spacebar>` - jump to next page
- `f / b` - forward / back
- `u / d` - up / down
- `/<search_string>` - search for a keyword
- `n`(ext) / `shift + n` - forward and back
- `q` - quit