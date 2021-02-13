#!/bin/sh

# Infrastructure as code change checklist
# input: contains repo names you want to modify
# path: URL of the repository without repo name
# branch_name: name of the branch
# new_change: string you want to change or append
# Filename that you are running sed command on
# commit_message: Commit message of the commit 

input="input-repository.txt"
path="https://github.com/username"
branch_name="Development"

new_change="hello" # for space \ \ 

commit_message="Adding support for ..."

file_name="test.java" # target file that needs changes

search="hie:"
cur="$(pwd)"

while IFS= read -r line
do
    repo="$path$line"
    git clone $repo
    cd $line
    #git checkout -b $branch_name
    git checkout $branch_name

    #--- This code implements the new_change inside Target file ------
    # search for string inside target file
    # and make changes based on new_change string

    # Command for replacing string pattern with new change
    command="s/$search.*/$new_change/g"

    sed -i .bak "$command" $file_name

    # Command for appending a new line after the search string is found
    #sed -i .bak "/^  $search.*/a\ 
    #$new_change" file_name

    # ----------------------------

    rm *.bak #sed creates a  temporary .bak file
    git add .
    git commit -m "$commit_message"
    git push origin $branchname
    cd $cur
done < "$input"
