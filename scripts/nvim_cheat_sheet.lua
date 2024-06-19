#!/usr/bin/lua

local cheat_sheet = [[
h, j, k, l	left, down, up, right
u		undo
U		undo line
ctrl + r	redo
K		documentation
x		delete character
i		insert text
I		inset at the start of the line
a		append text
A		appned at the end of the line
r		replace character
R		replace more than one character
p		put deleted/copied text
P		put text before the cursor 
w		start of next word
W		start of neext WORD
e		end of next word
E		end of next WORD
$		end of line
0		start of line
b		back to previous word
B		back to previous WORD
d -> w, e, $	delete until
d -> d		delete line
c -> w, e, $	delete until and insert
ctrl + g	show status
g -> g		move to start
G		move to end
/		search word forward
/xxx\c		search word and ignore case
?		search word backward
n		search forward again
N		search backward again
ctrl + o	move back
ctrl + i	move forward
{		move to the previous void line
}		move to the next void line
%		move to matching ([{
v		start visual selection
y		copy selected text
y -> w, e, $	select and copy text
o		open up a new line below then insert
O		open up a new line above then insert
ctrl + w -> w	switch windows
ctrl + d	to see posible command completion
tab		to select a completion
:q		quit
:q!		force without ask
:w xxx		write changes
:wq		write changes and quit
v -> :w xxx	write the selecttion to a new file
:s/X/Y		substitute word X for word Y
:s/X/Y/g	substitute any word X for Y in the line 
:N,Ms/X/Y/g	substitute any word X for Y from N to M
:%s/X/Y/g	substitute all X's for Y in the file
:%s/X/Y/gc	substitute all X's for Y but ask each time
:!		execute any external command
:r xxx		read output from a file or command
:set ic		ignorecase - set ignore upper/lower case when searching
:set noic	set no ignore case whean searching	
:set invic	invert value of ignore case
:set hls	hlsearch - set highlight all matching phrases when searching
:set is		incsearch - set increment search and show partial matches
:close		closes the current windows but not neovim
]]

local command = 'echo "'
	.. cheat_sheet
	.. '" | rofi -dmenu -p "NeoVim Cheat Sheet" -lines 10 -width 30 -no-fixed-num-lines -i'

os.execute(command)
