#!/usr/bin/lua

local cheat_sheet = [[
h,j,k,l         Keys to move the cursor
d               Delete selection/character at cursor
i               Enter insert mode
I               Enter insert mode at the start of the line
a               Append to the selection and enter insert mode
A               Enter insert mode at the end of the line
.               Repeat the last insert command
Esc, Alt e      Return to normal mode
o,O             Open lines below and above the cursor
w,W             Select forward until the next word or WORD
e,E             Select to the end of the current word or WORD
b,B             Select backward to the start of the current word or WORD
c               Delete selection and enter insert mode
v               Enter select mode
x               Select the entire line, repeat to select the next line
%               Select the entire file
s               Select matches in the selection
f,F             Select up to and including (find) a characater
t,T             Select up to but not including (till) a character
Alt .           Repeat the last f / t selection
;               Collapse selection
Alt ;           Reverse the cursor in the selection
r               Replace all selected characters
R               Replace selection with previously yanked text
&               Align the contents of the selection
Alt s           Split the selection on newlines
S               Split each selection on a regex pattern
J               Join lines or selected lines
u,U             Undo and redo
y               Yank (copy) text
p               Paste
Space y         Yank (copy) text to the system clipboard
Space p         Pase on the system clipboard
n,N             Cycle through search matches
C               Duplicate the cursor to the next suitable line
Alt C           Duplicate the cursor above
,               Remove the extras cursors
Alt ,           Remove primary cursor / selection
),(             Cycle the primary cursor / selection
Alt ),(         Cycle the content of the selections
>,<             Indent or unindent lines
Ctrl a          Increment number or numbers under selection
Ctrl x          Decrement number or numbers under selection
~               Swith the case of all selected letters
RQ              Set all selected letters to lowercase
Alt RQ          Set all selected letters to uppercase
Ctrl c          Comment / uncomment the line
DQ <char>       Select register
Q               Start / stop recording a macro
q               Repeat the macro from the register
/               Search forward in file and copy into register /
?               Search backward in file and copy into register /
*               Copy the selection into register /
n,N (v)         While select mode it adds a new selection
Ctrl s          Save current position to the jumplist
Ctrl o          (out) move backwards in the jumplist
Ctrl i          (in) move forward in the jumplist
mm              Jump between matching bracket pairs
mi (,[,{,Q      Select the inside content between a pair any delimiters
ma (,[,{,Q      Select both the inside content and the delimiters themselves
ms (,[,{,Q      Surround around the selection with delimiters
md (,[,{,Q      Delete surrounding pairs of delimiters
mr (,[,{,Q      Replace surrounding pairs of delimiters with others delimiters
gg              Go to line <number> or start
ge              Go to last line
gh              Go to the start of the line
gl              Go to the end of the line
ga              Go to last accessed file
gt              Go to window top
gb              Go to window bottom
gc              Go to window center
Ctrl w nv       Open a new empty buffer in a vertical split
Ctrl w ns       Open a new empty buffer in a horizontal split
Ctrl w h,j,k,l  Move between splits
Ctrl w v,s      Split current buffer vertically / horizontally
Ctrl w o        Close (extra) splits except current
Ctrl w H,J,K,L  Swap the current split with the split (left / down / up / right)
Ctrl w t        Transpose splits
Ctrl w q          Close current split
Ctrl v,s        Open split from filepicker (vertically / horizontally)
:q              Quit will exit
:q!             Quit! will exit without ask
:w              Write will save the changes
:w xxx          Write changes in the file xxx
:wq             Write-quit will save changes and quit
:vs <name>      Open a vertical split of <new file> / <existing file> or current file
:hs <name>      Open a horizontal split of <new file> / <existing file> or current file
]]

local command = 'echo "'
	.. cheat_sheet
	.. '" | rofi -dmenu -p "Helix Cheat Sheet" -lines 10 -width 30 -no-fixed-num-lines -i'

os.execute(command)
