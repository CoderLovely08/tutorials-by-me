# BASH Programming

type 'echo hello there' in terminal it prints the **hello there** in the console
create a file with .sh extension and write the same command in it
run the file with *sh filename.sh* command to view the exact same output
the file is running the commands on behalf of us
to add a file permission use 
```bash
chmod +<permission> filename
```

bash has variables also
to print the value of variable use the $ in front of the var name and echo it
to accept input from user use 'read VAR_NAME' and it stores the input in varname
use touch filename.extension to create a new file in the working dir
type '#!/bin/bash' to tell that you want to use bash interpreter, it is called as shebang
files can take arguments while running them
use 'echo $*' to print all args passed to the file
ex: file.sh arg1 arg2 arg3
-> arg1 arg2 arg3
to access any one of these use the 1based indexing like $2 to print 2nd arg


### Comparision Operators
1. -eq equal
2. -ne not equal
3. -lt less than
4. -gt greater than
5. -ge greater or equal
6. -le less or equal

if/else syntax
```bash
if [[ 5 -lt 10 ]]
then 
    echo true
```

to check the exit status of previous command or script type **echo $?** if 0 -true else 1=false
0 also means there was no error
127 means command not found

for loop syntax
```bash
for (( i = 10; i > 0; i-- ))
  do
    echo $i
  done
```

ls / - prints the files in the root directory
ls /dirName - prints the files in the specified directory

to view the manual of something
type 'man command_name'

use 
```bash
sleep #time in sec
sleep 5
```

(( ... )) performs calculation and returns nothing

### Arrays
```bash
ARR=("a" "b" "c")
echo ${ARR[1]} # to print element at first index
echo ${ARR[@]} # to print all at once
```