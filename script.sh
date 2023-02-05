#!/bin/bash
 
# Delete folders
rn -rf fol_1 -rf fol_2

# Create folder 1 and 2
mkdir fol_1 fol_2

# creating files in folder 1
touch fol_1/1_1.txt fol_1/1_2.txt fol_1/1_3.txt 

# Update the job so all the files ending with _1.txt and _3.txt have only read 
# and write permissions by the you (being the user who created the file) in each of the folder
# chmod 600 permissions means that only the owner of the file has full read and write access to it
chmod 600 fol_1/1_1.txt
chmod 600 fol_1/1_3.txt

# Create files in folder 2
touch fol_2/2_1.txt fol_2/2_2.txt fol_2/3_2.txt

# Update the job so all the files ending with _2.txt have read, write, 
# and executed permissions by any user on your computer (being the user who created the file) in each of the folder 
# chmod 755 means read and execute access for everyone and also write access for the owner of the file.
chmod 755 fol_2/2_2.txt

# creating gitignore files 
echo "fol_1" >> .gitignore
echo "fol_2" >> .gitignore

# create readme file
echo "Week 2 Lab - Bash & GIT" >> README.md
echo "" >> READNE.md
echo "Student Name: Colin Shaw" >> README.md
echo "Student Number: x19145586" >> README.md
echo "" >> README.md
echo "Link to my GITHUB Repo: https://github.com/colinshaw1/devops-lab-2-task" >> README.md
echo "" >> README.md

# pint job compelete in teminal 
echo "Job Complete"

# commit changes
git add .
git commit -m "Add script.sh to git hub"
git push

