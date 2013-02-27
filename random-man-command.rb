#!/usr/bin/env ruby

# find the paths that compose the system $PATH
path_dirs   = `echo $PATH`.split(':')

# search for executable files in those dirs and buffer the results
executables = []
path_dirs.each do |dir|
    if File.exists? dir
        `find '#{dir}' -executable`.each_line { |line| executables.push line }
    end
end

# iterate over the executables until one with a man page is found
man_content = ''
while man_content.empty?
    # randomly select one of the programs from the array of executables
    program = File.basename executables[Random.rand(executables.length - 1)]

    # buffer its manpage content
    man_content = `man #{program}`
end

# display the output
puts man_content
