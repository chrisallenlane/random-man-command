Random Man Command
==================
Displays the first 509 bytes from a random `man` page. 

I wrote this program so I could pipe its output into my system monitoring tool
(`conky`) to help me passively learn new commands. I invite you to do the same.

Integrating with Conky
----------------------
I use the following statement (within my `.conkyrc` file) to embed this
script's output within `conky`:

```lua
${voffset 8}${execi 600 /path/to/random-man-command.rb | fmt -s -w 40 }
```

(The `fmt` command hard-wraps this script's output to 40 characters so it stays
visible within `conky`'s bounds.)

Known Issues
------------
This program will output to `stderr` when it encounters an executable on your
system `$PATH` that does not have a `man` page. I may or may not fix this
issue, because it does not interfere with my own usage.
