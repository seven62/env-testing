# Vim Cheatsheet

## Modes

| **Command** | **Key Press** | **Description**                         |
|:------------|:--------------|-----------------------------------------|
| NORMAL      | `ESC`         | Can enter other modes, or use shortcuts |
| COMMAND     | `:`           | Can execute commands                    |
| INSERT      | `i`           | Insert at current position              |


## Save / Close Files

| **Command**   | **Description**                                 |
|:--------------|:------------------------------------------------|
| :w            | Write (save) to original file |
| :w <filename> | Write (save) to new filename |
| :wq           | Write (save) changes and quit |
| :q            | Quit (no changes made) |
| :q!           | Quit (without saving changes) |



## Text Entry

| **Command** | **Description**                          |
|:------------|:-----------------------------------------|
| `a`         | Print the current user id and name       |
| `A`         | Print or change system hostname          |
| `i`         | Display or change date and time          |
| `I`         | Display time since last startup / reboot |
| `o`         | List users currently logged in           |
| `O`         | Print general system information         |


## Text Deletion
| **Command** | **Description**                |
|:------------|:-------------------------------|
| `x`         | Print user and group ids       |
| `dw`        | Create new user account        |
| `de`        | Modify a user password         |
| `db`        | Modify a user account          |
| `d$`        | Delete a user account          |
| `dd`        | Print a users group membership |
| `d^`        | Create new privilege group     |


## Copy / Pasting

| **Command** | **Description**                       |
|:------------|:-------------------------------------:|
| `yy`        | Yank current line                     |
| `y$`        | From cursor, yank to end of line      |
| `yw`        | From cursor, yank to end of word      |
| `p`         | Paste below cursor                    |
| `P`         | Paste above cursor                    |
| `u`         | Undo last change                      |
| `U`         | Restore entire line                   |
| `J`         | Move line below to end of curent line |


## Cursor Navigation Shortcuts

| **Command** | **Description**                              |
|:------------|:---------------------------------------------|
| `ctrl + e`  | Scroll Down                                  |
| `ctrl + y`  | Scroll Up                                    |
| `ctrl + f`  | Page Down                                    |
| `ctrl + b`  | Page Up                                      |
| `ctrl + u`  | Half Page Up                                 |
| `ctrl + d`  | Half Page Down                               |
| `gg`        | Top of file                                  |
| `G`         | Bottom of file                               |
| `H`         | Top of page                                  |
| `M`         | Middle of page                               |
| `L`         | Bottom of page                               |
| `w`         | Start of next word                           |
| `e`         | End of next word                             |
| `E`         | End of next word (ignore punctuations)       |
| `b`         | Start of previous word                       |
| `B`         | Start of previous word (ignore punctuations) |
| `$`         | Move to end of current line                  |
| `0`         | Move to start of current line                |


## Command Mode Commands

| **Command**       | **Description**               | **Example**        |
|:------------------|:------------------------------|--------------------|
| `:e <filename>`   | Edit a file in a new buffer   | `:e newfile.txt`   |
| `:r <filename>`   | Read in the file              | `:r /tmp/file.txt` |
| `:r !{cmd}`       | Read in the command STDIN     | `:r !{ls -l}`      |
| `:1 (any number)` | Go to line number             | `:15`              |
| `:/`              | Search forward for pattern    | `:/<searchstring>` |
| `:?`              | Search backward for pattern   | `:?<searchstring>` |
| `:s`              | Substitute on current line    | `:s/foo/bar`       |
| `:%s`             | Substitute in entire document | `:%s/foo/bar`      |




<!-- ## Getting Help

| **Command**  | **Description**                     |
|:-------------|:------------------------------------|
|           |                      |
|   |            |
|          |                          | -->