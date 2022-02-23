# Linux Shell Usage (101)


## Navigation


### Basic Commands

- `ls` - list files  
- `cd` - change directory  
- `pwd` - get working directory  
- `pushd` - saves last location  
- `popd` - pops back to saved spot  


### Nav Shortcuts

- `.` - "here" or current working directory  
- `..` - up one level from current directory  
- `~` - current user's home directory  
- `-` - last working directory  


## Reading Files

- `cat` - concatenate and print
- `less` - display output one screen at a time
- `head` - first lines of a file
- `tail` - end of a file often combined with -f (live follow)
- `cat`	- concatenate and print (display) the content of files
	- example: `cat /etc/passwd`


## Changing Files

- `mkdir` - make new directory  
- `echo` - print to standard out  
- `>`  - redirect and overwrite  
- `>>` - redirect and append  
- `touch` - create or change time  
- `cp` - copy files  
- `mv` - move or rename  
- `rm` - remove file  


<!-- ## Redirection and Streams

echo "hello world"
echo “This text will be displayed by standard out”
> == redirect
echo “This is a new file” > newfile.txt	
echo "this is replacement text" > newfile.txt

redirect STDOUT to a file and write / overwrite:  
`ls > ls-output.txt`

redirect STDOUT to a file and write / append:
`ls >> ls-output.txt`

file filename - display type of file regardless of extension

3 general text classifications:

ls
ls 1>file-list
ls
cat file-list
ls > file-list2
ls noexist
ls noexist > file-list3		# no work, stderr
ls 						# no filelist3
ls noexist 2> file-list3  	# redirect stderr to 



stdin   = 0
stdout  = 1
stderr  = 2

> examples of out and err

stout:  successful
err:  unsuccessful

a pipe sends the std out of one command to the stin of another

redirects are similar, but dest is the file

redirect STDOUT to a file and write / overwrite:  
`ls > /home/stdout.txt`

redirect STDOUT to a file and write / append:
`ls >> /home/stdout.txt`

redirect STDERR to a file and write / overwrite:  
`ls 2> /home/stderr.txt`
`ls 2>> /home/stderr.txt` appends  

redirect both to a file:  
`ls &> /home/stderrout.txt`  # note - nothing will show on screen
`ls &>> /home/stderrout.txt`  

redirect in and out of a command
`sort < /home/lsout.txt > /home/sorted.txt`

what if you need to send the output of a command to a file _and_ the screen? `tee`  

`ls | tee lsout.txt`
`ls | tee -a lsout.txt` # appends

> example `find /etc | sort | tee etcsort.txt | wc -l`  
`find /etc 2> etcerr.txt | sort | tee etcsort.txt | wc -l`  

find /etc &> /dev/null -->


## Searching 

- `find` - find /path -option “searchstring”
- `grep` - prints lines that match a given pattern
- `grep -e` - matches an extended expression (egrep)
- `zgrep` - search compressed files


### Find

Find syntax: 

- `find <PATH> -name “<STRING>”`
- `find /etc/elasticsearch -name "*.conf"`
- `find /etc -name jvm* -maxdepth 2`


### Grep

- Options:
	- `-i` ignore case
	- `-v` invert search
	- `-c` count results
	- `-o` only chars match
	- `-r` recursive
	- `-E` extended regex (same as egrep)

	- Example 1: `grep -i 'root' /etc/passwd` 
	- Example 2: pipe output of other commands to grep
		- `find / -name *.txt | grep apache`


## Sorting & Filtering

- pipe ( `|` ) - passes output from one command to another
	- `echo “echo will print this message”`
	- `echo “echo will print this message” | wc`
		- output: line word characters
	- `cat file | grep search`

- `tee` - send the output of a command to a file _and_ the screen? `tee`  
	- `ls | tee lsout.txt`
	- `ls | tee -a lsout.txt` # appends
	- `find /etc | sort | tee etcsort.txt | wc -l`  
	- `find /etc 2> etcerr.txt | sort | tee etcsort.txt | wc -l`  


- `wc` - print byte, word, and line counts
- `cut`	- divide a file into several parts
- `uniq` - uniquify files (dedupe)
- `sort` - sort text files
