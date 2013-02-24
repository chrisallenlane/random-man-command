Random Man Command
==================
Displays the first 509 bytes from a random `man` page. 

I wrote this program so I could pipe its output into my system monitoring tool
(`conky`) to help me to passively learn new system commands. I invite you to do
the same.

Integrating with Conky
----------------------
I use the following command to embed the output of this script into my `conky`
output:

```
lua ${voffset 8}${execi 600 /path/to/random-man-command.rb | fmt -s -w 40 }
```

The `fmt` command (into which I am piping the output) hard-wraps the output of
this script at 40 characters so the output stays within bounds of `conky`'s
box.

Known Issues
------------
The program may sometimes output to `stderr` when it encounters an executable
on your system `$PATH` which does not have an entry in `man`. I may or may not
fix this issue, because it does not interfere with my own usage.
