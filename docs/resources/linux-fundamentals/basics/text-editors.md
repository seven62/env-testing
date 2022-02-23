# CLI Text Editors

Editing files in the terminal is crucial skill. There are many editors, but this section covers the two 
choices in order of complexity.


## Nano


### Overview

Nano is a very straight forward starting text editor that is easy for anyone to learn. So much so, that 
the Fedora linux distro has make it the default system editor. Some things to know:  

- May need be installed (on RHEL systems)
- Low barrier to entry
- Basic usage:
    - `nano <FILENAME>`
    - write content
    - ++ctrl+"x"++
    - "Save modified buffer?": `Y`
    - confirm <FILENAME> > ++"Enter"++


## Vi / Vim


### Overview

Vi(m) is a powerful _lifetime_ editor that is very keyboard shortcut focused. It has a somewhat high barrier to entry, but absolutely worth the time to learn.  Some things to know:  

- Already installed
- Higher barrier to entry
- Worth the investment



### Basic Examples

- Basic usage:
    - `vim <filename>`
    - `i` to enter insert mode
    - write content
    - ++"Esc"++ to exit insert mode
    - `:wq` to write changes and quit


### Navigation Example

Keyboard shortcuts are where `vi` / `vim` really shines. 

- Jump to a line number - `:24`
- Searching
    - `/searchstring`
    - `/n  (next match)`
    - `/N  (previous match)`
- More navigation
    - `gg` 	(top)
    - `G`  (bottom)
    - `ctrl + d`  (half page down)
    - `ctrl + u`  (half page up)

<!-- Individual Exercise guide: elasticsearch.yml -->

A more verbose cheatsheet can be found at the [Quickstart](../../../../quickstart/nano-tutorial) section.