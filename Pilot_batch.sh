#!/bin/bash

# variables define
# foo="global"
# foo2="trb"

# __demofuntion(){
#     local foo="local"
#     echo $foo
# }
# __demofuntion
# echo  $foo 


# user inputs

# echo "enter your name:"
# read  NAME
# echo "Hello : $NAME"

# if else

# echo "what is your age?"
# read age

# if [ $age -ge 18 ]; then

# echo "Enjou your movie"
# mkdir test


# else
#    echo  "Sorry you are not allowed"

# fi

# comparisons

########
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2
########

#[ 18 -eq 8 ] && echo "print only if condition is true" || echo "print if condition is false"
# file conditions
########
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable
########
# filename="test.txt"
# if [ -x $filename ]; then

# echo "file has it"

# else

# echo "file is doest not have executable perm."

# fi


# switch cases

# echo "Are you older than 18y:n?"
# read response

# case "$response" in

# y|Y)
#     echo "enjoy";;
# n|N)
#     echo "sorry";;
# *)
#     echo "Invalid response"

# esac



## for loops

# arrVar="one two three four"
# for var in "$arrVar"
# do

# echo "$var"

# done

## while loops

# LINE=1
# while read -r CURRENT_LINE
# do
#    echo "$LINE: $CURRENT_LINE"
#    ((LINE++))
# done  "./test.txt"


## define functions

__newfunction(){
    echo $1 $2 $3
}



__newfunction param1 param2 15478jadk

