*******  ABOUT BASH  *******

What is bash?
 - scripting language
 - interpreter for the bash scripting language
 - what sits behind a terminal emulator
 - binary executable to be found at /bin/bash

What is it good for?
 - calling programs like cool linux tools
 - it is interactive, so interacting with called programs
 - connecting multiple programs via pipes
 - writing simple scripts or more complex programs

Starting linux tools from bash:
	ls
	cd
	pwd
	cp
	mv
	find
	grep

if grep -q "aa" datei
	then echo "gefunden"
else
	echo "nicht gefunden"
fi

uc to upper case, cut

Variables
if-then-else
reading files line by line
doing stuff for all files in directory:
	for file in /tmp/testdir/*; do echo "$file ---"; done
	for file in "/tmp/testdir/"*; do echo "$file ---"; done
((math))

pipes, I/O redirecting - examples

chmod, chown ?
man pages


********  REGULAR EXPRESSIONS  *********

.
*+?{}
[](|)
^$
\1
lookarounds
