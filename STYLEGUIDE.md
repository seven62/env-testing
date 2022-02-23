# Curriculum MkDocs Style Guide

This style guide provides all details on writing and formatting course resources with MkDocs. The purpose of this 
document is to:

- kickstart content development and contribution
- highlight the top MkDocs Material capabilities
- provide standards for uniformity across content


#### Table of Contents

- [External Links](#external-links)
- [General Styling](#general-styling)
  - [Accessibility](#accessibility)
  - [Indentation](#indentation)
  - [Line Breaks](#line-breaks)
  - [Line Length](#line-length)
  - [Bold & Italics](#bold-and-italics)
  - [Monospace](#monospace)
  - [Lists](#lists)
    - [Ordered](#ordered)
    - [Unordered](#unordered)
  - [Admonitions (Callouts)](#admonitions)
  - [Questions & Solutions](#questions-and-solutions)
  - [Images](#images)
  - [Links](#links)
  - [Code Blocks](#code-blocks)
    - [Inline](#inline)
    - [Fenced](#fenced)
    - [Annotations](#annotations)
    - [Line Numbers](#line-numbers)
    - [Highlighting](#highlighting)
    - [Collect All Four](#collect-all-four)
  - [Tabbed Content](#tabbed-content)
  - [Data Tables](#data-tables)
  - [Key Commands & Shortcuts](#key-commands-and-shortcuts)
- [Example Lab](#example-lab)


---


## External Links

There are a lot of resources to note before diving into things:

- Elastic Visual Styling
  - [Brand Guide](https://zeroheight.com/302f66895/p/2424b6-elastic-brand-guide)
  - [Colors](https://brand.elastic.co/302f66895/p/35c153-colors)
  - [Certification Branding](https://drive.google.com/drive/folders/1s1XU2euTof5bfcVpEREklJybfJ_kuutV)
  - [Logos](https://zeroheight.com/302f66895/p/06c73c-elastic-logo/b/1243b6)
  - [Solutions Logos](https://zeroheight.com/302f66895/p/41ff52-solution-logos/b/337423)
    - excellent site to find official logos and visual assets
    - each lab guide should have the proper solution logo
- Markdown
  - [Markdown Cheat Sheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
    - covers most all github style markdown features
  - [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables)
    - great tool for quickly generating tabled data
- [MkDocs Material Reference](https://squidfunk.github.io/mkdocs-material/reference/abbreviations/)
    - the additional layer of polish on top of markdown
    - this project has several additional plugins enabled


## General Styling

Let's take documentation up a notch and look at both general styling options, and features that are specific 
to [Mkdocs Material](https://squidfunk.github.io/mkdocs-material/). Most lab guides should utilize the below 
features.


### Accessibility

When it comes to accessibility considerations, this reference is a work in progress. The first pass at this is to 
make sure that all images have an alternate title, which will be useful when integrating other accessibility 
features down the line. The [Images](###images) and Links sections below will cover the syntax details. 

_More to come in this section..._


### Indentation

In order to present complex information in numbered order, all numbered content should be set to a uniform 
indentation. In most modern editors the **TAB** key is converted to a set of spaces, and this works great. To see how 
this looks in practice, see the [Example Lab Guide](##example-lab-guide) at the end of this page.


### Line Breaks

As you will see in examples and the course index template, the html `<br>` tag peppered throughout files. This is to separate sections and some syntax that can be a bit too crowded out of the box. 
Use your best visual sense.  


### Line Length

We don't need a strong line colum length limit (like python's pep8 standard), but it is very useful 
to keep lines ~ 100 columns long. This is primarily to enable a clean PDF export of the main 
lab guide `index.md` file.

It's easy to enable a width guideline in most editors. Take VScode for example: just edit 
"settings.json" and add:

```json
    "editor.rulers": [
        
        100
    ]
```


### Bold and Italics

This first section covers basic syntax and wording.  

- **Menu Navigation** - these elements should be in Italics
    - separated by `->` ( e.g., "Click on *File -> New -> New Rule...*" )

- **Keyboard Shortcuts** - these elements should be in Bold 
    - where possible, use the [key plugin](###keys) syntax

- **Buttons** - these elements should be in Bold 
    - (e.g. "Click **OK**")

- **Checkboxes** - these elements should be in Italics
    - (e.g. "Ensure that *Restart when complete* is checked before continuing")

- **Radio Buttons** - these elements should be in Italics 
    - (e.g. "Select *Yes*, then click **Next**")

- **Tabs** - these elements should be in Italics 
    - (e.g. "Click on the *Settings* tab")

-  **Notes** - these elements should be in Bold & Italic (that's 3 asterisks), then italicized text 
    - (e.g.,  "***Note:*** *You may need to refresh the page to see the change.*")


### Monospace

Use monospace highlighting in the following cases:

- filenames / paths
- hostnames / IP addresses
- usernames
- passwords
- CLI commands (include the appropriate prompt [i.e., "`$`" or "`C:\>`"])


### Lists

#### Ordered

Markdown has the capablity to render a series of `1. ` numberings into a true ordered list, but this can 
be very difficult to manage when composing a long list of detailed instructions. To keep things clear and more maintainable, use sequential numbering when creating an ordered list.

Example:  

```
1. this
2. that
3. next
4. next
```

#### Unordered

For unordered lists, use `-` for each item

Example:  

```
- this
- that
- next
- next
```


### Admonitions

These are an important visual feature to grab the readers attention, most notably:  


1. Starting lab section: 

```
!!! abstract "**Objective:**"
    This opening callout will clearly identify the learning objective of the section.
    Like: "In this lab, you will ... ".
```

2. Ending a lab section: 

```
!!! done "**Summary:**"
    Wrap up the lab section by telling them again what was covered and what was accomplished.
```

3. Tips or Notes to stress importance

Same as the above syntax, but using different keywords like "note", "tip", "example", "warning", or "danger.


Full reference is found [here](https://squidfunk.github.io/mkdocs-material/reference/admonitions/).


### Questions and Solutions

Collapsable question and solution checks on learning are another implementation of the "admonitions" 
above. The syntax is almost the same, but replacing 3 exclaimations with question marks:

```
3.  Let's review some concepts covered:

    ??? question "What's the value of `FAVORITE_COLOR` ?"
          "Blue. No, RED. AAAAAAAaaaahhhhh!!"
```


### Images

Images can be formatted in several ways, and a good reminder that valid HTML is valid Markdown.

1. Unstyled image:

```md
![image](img/cloud-signup.png)
```

2. Centered image (via local stylesheet):

```md
![image](img/cloud-signup.png){: .center}
```

3. Centered and sized image (via local stylesheet):

```md
![image](img/cloud-signup.png){:height="50%" width="50%", .center}
```

4. Captioned image:  

```html
    <figure>
    <img src="img/cloud-signup.png" width="600"/>
    <figcaption>Elastic Cloud Login</figcaption>
    </figure>
```

Full reference is found [here](https://squidfunk.github.io/mkdocs-material/reference/images/).


### Links

Links should be used whenever pointing to an external reference is helpful for students, like the full documentation for 
a particular solution or tool. It is generally preferred to have links open in a new browser tab, as to not jump a 
student out of the context of the current lab guide or effort.

- Example: `[link name](URL)`

- New tab example: `[link name](URL){:target="_blank"}`

- Full example: `Click [here](https://cloud.elastic.co/login){:target="_blank"} to open the main page.`


### Code Blocks

There are a _lot_ of options here, this is just the high points to get up and running. Some available syntaxes for these next feature include `json`, `yaml`, `bash` (`shell`) , `python`, and more!


#### Inline

There's a ***lot** of cool stuff availble when presenting code. Here's the most typical inline code 
that is ***indented from the this sentence***, and can therefore be copied on mouse click ;) :  

    ./filebeat setup

This example will display `#!python range()` in a sentence with sytax highlighting.

Full reference is found [here](https://squidfunk.github.io/mkdocs-material/reference/code-blocks/#highlighting-inline-code-blocks).  


#### Fenced

Use fenced blocks (preceded and followed by 3 backticks) to enclose large blocks of CLI output, code examples/samples/excerpts, etc.

You can also specify a language immediately following the opening fence to invoke context highlighting:  

**Shell / Bash**

```
$ git push
Counting objects: 4, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (4/4), done.
Writing objects: 100% (4/4), 512 bytes | 0 bytes/s, done.
Total 4 (delta 3), reused 0 (delta 0)
```

**JSON:**
```json
{
    "menu": {
        "id": "file",
        "value": "File",
        "popup": {
            "menuitem": [
                {
                    "value": "New",
                    "onclick": "CreateNewDoc()"
                },
                {
                    "value": "Open",
                    "onclick": "OpenDoc()"
                },
                {
                    "value": "Close",
                    "onclick": "CloseDoc()"
                }
            ]
        }
    }
}
```

Full reference is found [here](https://squidfunk.github.io/mkdocs-material/reference/admonitions/).


#### Annotations

``` { .yaml .annotate }
# Module: nginx
# Docs: https://www.elastic.co/guide/en/beats/filebeat/7.x/filebeat-module-nginx.html

- module: nginx
    # Access logs
    access:
    enabled: true # (1)

    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:

    # Error logs
    error:
    enabled: true # (2)

    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:

    # Ingress-nginx controller logs. This is disabled by default. It could be used in Kubernetes environments to parse ingress-nginx logs
    ingress_controller:
    enabled: false

    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:
```


#### Line Numbers

Line numbers can be added to code blocks by adding the `linenums="1"` value after the sytax:  

``` python linenums="1"
def bubble_sort(items):
    for i in range(len(items)):
        for j in range(len(items) - 1 - i):
            if items[j] > items[j + 1]:
                items[j], items[j + 1] = items[j + 1], items[j]
```


#### Highlighting

Highlighter marker style callouts can be added to code blocks by adding the `hl_lines="#"` value after the sytax. Individual lines, multiple lines, and line ranges are all possible!

``` python linenums="1"
def bubble_sort(items):
    for i in range(len(items)):
        for j in range(len(items) - 1 - i):
            if items[j] > items[j + 1]:
                items[j], items[j + 1] = items[j + 1], items[j]
```


#### Collect All Four

These markups can be combined, if it serves a purpose... good to know.

```md
    ```{ .shell .annotate hl_lines="1 9-11" linenums="1" }
    elasticsearch: https://url.europe-west1.gcp.cloud.es.io:443 # (1)
        parse url... OK
        connection...
        parse host... OK
        dns lookup... OK
        addresses: 35.195.130.253   
        dial up... OK
        TLS...
        security: server's certificate chain verification is enabled
        handshake... OK         # (2)
        TLS version: TLSv1.2
        dial up... OK               
        talk to server... OK
        version: {stack-version}
    ```

    1. Is this annotation _DOPE_ or what?
    2. > "Why yes, yes it is."
```


### Tabbed Content

Full reference is found [here](https://squidfunk.github.io/mkdocs-material/reference/content-tabs/#tabbed).


### Data Tables

Full reference is found [here](https://squidfunk.github.io/mkdocs-material/reference/data-tables/).


### Key Commands and Shortcuts

Full reference is found [here](https://facelessuser.github.io/pymdown-extensions/extensions/keys/).


<!-- Disabled for now, a bit buggy
### Variable Usage

If you notice you've been repeating yourself, we can now use variables in our docs. At a high level, they can be used 2 ways:

1. Create a global definition in the base or course yaml file. Example:

    ```yml
    # Customization
    extra:
    course:
        greeting: 'Welcome to your Elastic course'
    ```

    - this can be reference in your docs as `{{ course.greeting }}`

2. Local variables can also be set at the top of a single (local) file, such as a set of lab instructions. An example in the __same .md file__:

    ```
    {%set DOC_COUNT = 101799 %}

    ...
    content
    ...
    ...

    With the correct query, Kibana will show a document count of {{ DOC_COUNT }}.
    ```

Full references are found [here](https://jimandreas.github.io/mkdocs-material/reference/variables/) and [here](https://mkdocs-macros-plugin.readthedocs.io/en/latest/).   -->


---

## Example Lab

The following code block is a reference to see how all these things can come together in a lab file. This content has also already placed 
and ready to fill out when building a new course from the [provided template](https://github.com/elastic/curriculum-content/tree/main/_COURSE_TEMPLATE).

<!-- course-template index file: -->

```md
<p align="center">
<img src="img/placeholder.png" width="25%" alt="">
</p>

# <COURSE_NAME> Lab Guide



## Lab 1 - LAB-TITLE

!!! abstract "**Objective:**"
    This opening callout will clearly identify the learning objective of the section.
    Like: "In this lab, you will ... ".

1.  First of all, you need to log in to Elastic Cloud Elasticsearch
    Service. Click [here](https://cloud.elastic.co/login) to open the main
    page. If you already have a cloud account just log in. If you do not
    have one, click on the link **Sign up**, enter your email as well as
    (strong!) password and click **Create account**.

    <!-- The below syntax is an example of a _captioned_ image: -->

    <br>
    <figure>
    <img src="img/placeholder.png" width="400"/>
    <figcaption>Placeholder meaningful caption</figcaption>
    </figure>

2.  More valuable information here, but expressed with a _centered_ non-captioned image:  

    ![](img/placeholder.png){:width=400, .center}
    <br>

3.  It's time to ask a question in this one, in order to review some concepts covered.

    ??? question "What's the value of `FAVORITE_COLOR` ?"
          "Blue. No, RED. AAAAAAAaaaahhhhh!!"

    <br>

4.  There's a ***lot** of cool stuff availble when presenting code. Here's inline code that can be
    copied on mouse click:  

        ./filebeat setup

5. Code blocks:

    ```yaml
    cloud.id: "YOUR_CLOUD_ID"
    cloud.auth: "elastic:YOUR_CLOUD_PASSWORD"
    ```

    - some available syntaxes: `json`, `yaml`, `bash` (`shell`) , `python`, and [more](#)!


6. Code highlighting:

    ```shell hl_lines="9-11"
    elasticsearch: https://url.europe-west1.gcp.cloud.es.io:443...
        parse url... OK
        connection...
        parse host... OK
        dns lookup... OK
        addresses: 35.195.130.253
        dial up... OK
        TLS...
        security: server's certificate chain verification is enabled
        handshake... OK
        TLS version: TLSv1.2
        dial up... OK
        talk to server... OK
        version: {stack-version}
    ```

7. Code line numbers:  

    ``` python linenums="1"
    def bubble_sort(items):
        for i in range(len(items)):
            for j in range(len(items) - 1 - i):
                if items[j] > items[j + 1]:
                    items[j], items[j + 1] = items[j + 1], items[j]
    ```


8. Code annotations:

    ``` { .yaml .annotate }
    # Module: nginx
    # Docs: https://www.elastic.co/guide/en/beats/filebeat/7.x/filebeat-module-nginx.html

    - module: nginx
        # Access logs
        access:
        enabled: true # (1)

        # Set custom paths for the log files. If left empty,
        # Filebeat will choose the paths depending on your OS.
        #var.paths:

        # Error logs
        error:
        enabled: true # (2)

        # Set custom paths for the log files. If left empty,
        # Filebeat will choose the paths depending on your OS.
        #var.paths:

        # Ingress-nginx controller logs. This is disabled by default. It could be used in
        # Kubernetes environments to parse ingress-nginx logs
        ingress_controller:
        enabled: false # (3)

        # Set custom paths for the log files. If left empty,
        # Filebeat will choose the paths depending on your OS.
        #var.paths:
    ```

    1. This line enables the collection of access logs to the default file path:
        `/var/log/nginx/access.log`.
    2. This line enables the collect of error logs from the default file path:
        `/var/log/nginx/error.log`.
    3. This configuration is relevant to Kubernetes deployments.




    > Quoteblocks can grab a student's attention and key in on something important! -- Confucious

    <br>


9. Be sure to consult the full [STYLEGUIDE](../STYLEGUIDE.md) for the full structure and styling
    reference.

!!! done "**Summary:**"
    Wrap up the lab section by telling them again what was covered and what was accomplished.

<br>
<br>


## Lab 2 - LAB-TITLE

!!! abstract "**Objective:**"
    Opening objective sentence.

1.  Sentence.

2.  Sentence.

3.  Sentence.

!!! done "**Summary:**"
    Summarizing sentence.

<br>



## Lab 3 - LAB-TITLE

!!! abstract "**Objective:**"
    Opening objective sentence.

1.  Sentence.

2.  Sentence.

3.  Sentence.

!!! done "**Summary:**"
    Summarizing sentence.

<br>

## Lab 4 - LAB-TITLE

!!! abstract "**Objective:**"
    Opening objective sentence.

1.  Sentence.

2.  Sentence.

3.  Sentence.

!!! done "**Summary:**"
    Summarizing sentence.

<br>

```
