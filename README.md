Random Man Command
==================
Displays the contents of a random `man` page. 

I wrote this program so I could pipe its output into my system monitoring tool
(`conky`) to help me passively learn new commands. I invite you to do the same.

Integrating with Conky
----------------------
I use the following statement (within my `.conkyrc` file) to embed this
script's output within `conky`:

```lua
${voffset 8}${execi 600 /path/to/random-man-command.rb }
```
You may alternatively use the `fmt` command to wrap this script's output to an
arbitrary length (ex: 40) so that it stays visible within `conky`'s bounds:

```lua
${voffset 8}${execi 600 /path/to/random-man-command.rb | fmt -w 40 }
```

Known Issues
------------
This program will output to `stderr` when it encounters an executable on your
system `$PATH` that does not have a `man` page. I may or may not fix this
issue, because it does not interfere with my own usage.
