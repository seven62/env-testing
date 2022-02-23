# Shell Tips and Tricks

Once you've become generally comfortable in the terminal, you can start becoming more ~lazy~ 
*efficient*. The goals in the terminal are to save time and boost productivity. Strive to be 
lazy. There, I said it!


## General

1. Tab Completion - Hitting the `<TAB>` key will attempt to complete file paths, names, etc. Use it all the time, it's your best friend. 
If you aren’t tab completing, you’re doing it wrong. Don’t be a crazy person, ABT (Always Be Tabbing).

2. Aliases - Laziness is a virtue, so when you find yourself running long commands as part of your normal workflow, ask 
yourself if you should make an alias for it. You can work with command aliases in two ways: non-persistent (shell session) and persistent (shell profile).

- Non-persistent: create a temporary alias for your login session by running:
    
    ```bash
    alias <alias>='<command>'
    ```

    ```bash
    alias ssre='sudo systemctl restart elasticsearch'
    ```

- Persistent: create an alias entry inside your bash profile file for full-time use. Example section in `~/.bashrc` file:
    
    ```bash
    ### ALIASES
    alias v='vim'
    alias ll='ls -lahG'
    alias gs='git status'
    alias gb='git branch'
    alias gl='git log --oneline'
    alias sshagent='eval "$(ssh-agent -s)"'    
    ```

## Time Travel (History)

### Basics

- `history` displays full shell session history
- this is saved to a file: `~/.bash_history`
- Up / Down arrow keys to scroll through history entries
- `!!` - (re)execute the last command ex. `sudo !!`
- `!<number>` - (re)execute a specific command in history by it's number ex. `!123`
- `!<cmd>` - runs last command that starts with whatever you type
- `!$` - refers to the last parameter used
    - `mkdir /home/test/ && cd !$`


### Reverse Searching

When your ready to take things to the next level you can jump into using Reverse History Search. Think of it as 
"ctrl + f find for your shell history".

- `ctrl + r` - enter the reverse search prompt to cycle through search pattern matches
- enter first part of command
- `ctrl + r` - again to cycle / loop through search pattern matches
- `<ENTER>` will (re)execute highlighed command
- `ctrl + g` - cancel / exit the reverse search prompt


## Bash Shortcuts

### Basic Shortcuts

Master these first. Like yesterday!

- `ctrl + l` – clear the screen
- `ctrl + a` - jump to beginning of line (left)
- `ctrl + e` - jump to end of line (right)
- `ctrl + u` - delete all to the left of cursor
- `ctrl + k` - delete all to the right of cursor
- `ctrl + w` - delete word to left

### Command Recall Shortcuts

- `ctrl + r` – search the history backwards  
- `ctrl + g` – escape from history searching mode  
- `ctrl + p` – previous command in history (i.e. walk back through the command history)  
- `ctrl + n` – next command in history (i.e. walk forward through the command history)  
- `alt + .` – use the last word of the previous command  

### Command Control Shortcuts

- `ctrl + s` – stops the output to the screen (for long running verbose command)  
- `ctrl + q` – allow output to the screen (if previously stopped using command above)  
- `ctrl + c` – terminate the command  
- `ctrl + z` – suspend / stop the command  

### Extended Shortcuts

- `ctrl + a` – go to the start of the command line  
- `ctrl + e` – go to the end of the command line  
- `ctrl + k` – delete from cursor to the end of the command line  
- `ctrl + u` – delete from cursor to the start of the command line  
- `ctrl + w` – delete from cursor to start of word (i.e. delete backwards one word)  
- `ctrl + y` – paste word or text that was cut using one of the deletion shortcuts (such as the one above) after the cursor  
- `alt + b` – move backward one word (or go to start of word the cursor is currently on)  
- `alt + f` – move forward one word (or go to end of word the cursor is currently on)  
- `alt + d` – delete to end of word starting at cursor (whole word if cursor is at the beginning of word)  
- `alt + c` – capitalize to end of word starting at cursor (whole word if cursor is at the beginning of word)  
- `alt + u` – make uppercase from cursor to end of word  
- `alt + l` – make lowercase from cursor to end of word  
- `alt + t` – swap current word with previous  
- `ctrl + f` – move forward one character  
- `ctrl + b` – move backward one character  
- `ctrl + d` – delete character under the cursor  
- `ctrl + h` – delete character before the cursor  
- `ctrl + t` – swap character under cursor with the previous one  


