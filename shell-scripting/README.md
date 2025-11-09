
## 1\. Hello World

Problem: Write a shell script to print "Hello, World\!"
Solution (hello.sh):

```bash
#!/bin/bash
echo "Hello, World!"
```

## 2\. Display Current Date and Time

Problem: Write a shell script to display the current date and time.
Solution:

```bash
#!/bin/bash
echo "Current Date and Time: $(date)"
```

## 3\. Take User Input

Problem: Write a shell script to ask for the user's name and greet them.
Solution:

```bash
#!/bin/bash
echo "Enter your name:"
read name
echo "Welcome, \$name!"
```

## 4\. Check if a File Exists

Problem: Write a shell script to check if a file exists.
Solution:

```bash
#!/bin/bash
echo "Enter file name:"
read fname
if [ -f "\$fname" ]; then
    echo "File \$fname exists."
else
    echo "File \$fname does not exist."
fi
```

## 5\. Odd or Even Number

Problem: Write a script to check if a number is odd or even.
Solution:

```bash
#!/bin/bash
echo "Enter a number:"
read num
if [ \$((num % 2)) -eq 0 ]; then
    echo "\$num is Even"
else
    echo "\$num is Odd"
fi
```

## 6\. Simple Calculator

Problem: Write a script to perform addition, subtraction, multiplication, and division.
Solution:

```bash
#!/bin/bash
echo "Enter first number:"
read a
echo "Enter second number:"
read b
echo "Addition: \$((a+b))"
echo "Subtraction: \$((a-b))"
echo "Multiplication: \$((a*b))"
echo "Division: \$((a/b))"
```

## 7\. Factorial Using Loop

Problem: Write a script to calculate the factorial of a number.
Solution:

```bash
#!/bin/bash
echo "Enter a number:"
read n
fact=1
for (( i=1; i<=n; i++ ))
do
    fact=\$((fact*i))
done
echo "Factorial of n is \$fact"
```

## 8\. Print 1 to N

Problem: Write a script to print numbers from 1 to N.
Solution:

```bash
#!/bin/bash
echo "Enter N:"
read n
for (( i=1; i<=n; i++ ))
do
    echo \$i
done
```

## 9\. Backup a File

Problem: Write a script to take a backup of a file by copying it with bak extension.
Solution:

```bash
#!/bin/bash
echo "Enter file name to backup:"
read fname
if [ -f "\$fname" ]; then
    cp "\$fname" "\$fname.bak"
    echo "Backup created: \$fname.bak"
else
    echo "File not found!"
fi
```

## 10\. Menu Driven Program

Problem: Write a script that shows a menu and performs tasks.
Solution:

```bash
#!/bin/bash
echo "Choose an option:"
echo "1. Show date"
echo "2. Show current directory"
echo "3. List files"
read choice
case \$choice in
    1) date;;
    2) pwd;;
    3) ls;;
    *) echo "Invalid choice";;
esac
```

```bash
#!/bin/bash
echo "You are logged in as: \$USER"
```

## 2\. Check Number is Positive, Negative, or Zero

Problem: Write a shell script that takes a number and prints whether it is positive, negative, or zero.
Solution:

```bash
#!/bin/bash
echo "Enter a number:"
read num
if [ \$num -gt 0 ]; then
    echo "\$num is Positive"
elif [ \$num -lt 0 ]; then
    echo "\$num is Negative"
else
    echo "\$num is Zero"
fi
```

## 3\. Largest of Three Numbers

Problem: Write a shell script to find the largest of three numbers.
Solution:

```bash
#!/bin/bash
echo "Enter three numbers:"
read a b c
if [ \$a -ge \$b ] && [ \$a -ge \$c ]; then
    echo "\$a is largest"
elif [ \$b -ge \$a ] && [ \$b -ge \$c ]; then
    echo "\$b is largest"
else
    echo "\$c is largest"
fi
```

## 4\. Count Files in Directory

Problem: Write a shell script to count the number of files in the current directory.
Solution:

```bash
#!/bin/bash
count=$(ls -1 | wc -l)
echo "Number of files in current directory: $count"
```

*(Note: Content from source was `count S(1s -1 | wc -1)` and `Scount`)*

## 5\. Reverse a Number

Problem: Write a shell script to reverse a number.
Solution:

```bash
#!/bin/bash
echo "Enter a number:"
read num
rev=0
while [ $num -gt 0 ]
do
    digit=$((num % 10))
    rev=$((rev * 10 + digit))
    num=$((num / 10))
done
echo "Reversed number is: $rev"
```

*(Note: Content from source was fragmented and contained `Snum-gt`, `digit \$((num10))`, `rev \$((rev 10 digit))`)*

## 6\. Print Multiplication Table

Problem: Write a shell script to print the multiplication table of a given number.
Solution:

```bash
#!/bin/bash
echo "Enter a number:"
read n
for i in {1..10}
do
    echo "\$n x $i = $((n*i))"
done
```

*(Note: Content from source was `\$n $x~si=S((n+i))^{m}$`)*

## 8\. Sum of Digits

Problem: Write a shell script to calculate the sum of digits of a given number.
Solution:

```bash
#!/bin/bash
echo "Enter a number:"
read num
sum=0
while [ $num -gt 0 ]
do
    digit=$((num % 10))
    sum=$((sum + digit))
    num=$((num / 10))
done
echo "Sum of digits: \$sum"
```

*(Note: Content from source was `while (\$num-gt 01`)*

## 2\. Check if Directory Exists

Problem: Write a shell script to check whether a given path is a directory.
Solution:

```bash
#!/bin/bash
echo "Enter directory name:"
read dname
if [ -d "\$dname" ]; then
    echo "\$dname is a directory."
else
    echo "\$dname is not a directory."
fi
```

## 6\. Check File Permissions

Problem: Write a script to check if a file has read, write, and execute permissions.
Solution:

```bash
#!/bin/bash
echo "Enter file name:"
read fname
if [ -r "\$fname" ]; then
    echo "File has read permission."
else
    echo "No read permission."
fi
if [ -w "\$fname" ]; then
    echo "File has write permission."
else
    echo "No write permission."
fi
if [ -x "\$fname" ]; then
    echo "File has execute permission."
else
    echo "No execute permission."
fi
```

## 7\. Rename a File

Problem: Write a shell script to rename a given file.
Solution:

```bash
#!/bin/bash
echo "Enter current file name:"
read old
echo "Enter new file name:"
read new
if [ -f "\$old" ]; then
    mv "\$old" "\$new"
    echo "File renamed to \$new"
else
    echo "File not found!"
fi
```

## 8\. Backup All Files in a Directory

Problem: Write a script to backup all files in the current directory to a folder called backup.
Solution:

```bash
#!/bin/bash
mkdir -p backup
cp * backup/
echo "All files copied to backup folder."
```

*(Note: Content from source was `cp backup/`)*

## 3\. List Files in Directory

```bash
#!/bin/bash
echo "Enter directory:"
read dname
ls -l "\$dname"
```

## 5\. Show File Size

```bash
#!/bin/bash
echo "Enter filename:"
read fname
stat -c%s "\$fname"
```

*(Note: Content from source was `stat -cas "\$fname"`)*

## 6\. Check File Permissions

```bash
#!/bin/bash
echo "Enter file name:"
read fname
[ -r "\$fname" ] && echo "Readable"
[ -w "\$fname" ] && echo "Writable"
[ -x "\$fname" ] && echo "Executable"
```

## Addition of Two Numbers using Command Line Arguments

Problem: Write a shell script to add two numbers provided as command-line arguments.
Solution (add.sh):

```bash
#!/bin/bash
# $1 first argument, $2 second argument
if [ \$# -ne 2 ]; then
    echo "Usage: \$0 num1 num2"
    exit 1
fi
sum=$((\$1+\$2))
echo "Sum = \$sum"
```

Run:
`bash add.sh 10 20`
`Sum = 30`
*(Note: Content from source was `Sum $=30$`)*

## Check if a File Exists (argument as filename)

Problem: Write a shell script to check if the given file (from command line) exists.
Solution (check\_file.sh):

```bash
#!/bin/bash
if [ \$# -ne 1 ]; then
    echo "Usage: \$0 filename"
    exit 1
fi
if [ -f "\$1" ]; then
    echo "File '\$1' exists."
else
    echo "File '\$1' does not exist."
fi
```

## Create files, directory, copy then delete

```bash
#!/bin/bash
touch file1 file2
mkdir dir
cp file1 file2 dir/
rm file1 file2
```

*(Note: Content from source was `of filel filed dir/` and `cm filel file2`)*

## 4\. Show date, time, username, and current directory

```bash
#!/bin/bash
echo "Date: $(date)"
echo "User: $(whoami)"
echo "Current Directory: $(pwd)"
```

*(Note: Content from source was `S(date"`, `Swhcam`, `Sowe`)*

## 5\. Add two numbers (command-line args)

```bash
#!/bin/bash
if [ \$# -ne 2 ]; then
    echo "Usage: \$0 num1 num2"
    exit 1
fi
echo "Sum = $((\$1+\$2))"
```

*(Note: Content from source was `S((...))^{m}`)*

## 7\. Print 5 4 3 2 1 using while loop

```bash
#!/bin/bash
n=5
while [ \$n -gt 0 ]; do
    echo \$n
    n=$((n-1))
done
```

## Print 1 to N using until loop

```bash
#!/bin/bash
if [ \$# -ne 1 ]; then
    echo "Usage: \$0 num"
    exit 1
fi
i=1
until [ $i -gt \$1 ]; do
    echo $i
    i=$((i+1))
done
```

*(Note: Content from source was `if [ \$% ne 1)` and `Şi-gt`)*

## Basic math using case

```bash
#!/bin/bash
if [ \$# -ne 3 ]; then
    echo "Usage: \$0 num1 operator num2"
    exit 1
fi
case \$2 in
    +) echo "Result = $((\$1+\$3))" ;;
    -) echo "Result = $((\$1-\$3))" ;;
    x) echo "Result = $((\$1*\$3))" ;;
    /) echo "Result = $((\$1/\$3))" ;;
    *) echo "Invalid operator";;
esac
```

*(Note: Content from source included stray `'` and `"`)*

## 10\. Find biggest of 3 numbers

```bash
#!/bin/bash
if [ \$# -ne 3 ]; then
    echo "Usage: \$0 num1 num2 num3"
    exit 1
fi
if [ \$1 -ge \$2 ] && [ \$1 -ge \$3 ]; then
    echo "\$1 is largest"
elif [ \$2 -ge \$1 ] && [ \$2 -ge \$3 ]; then
    echo "\$2 is largest"
else
    echo "\$3 is largest"
fi
```

## 15\. Check file permissions

```bash
#!/bin/bash
touch file.txt
if [ -r file.txt ]; then echo "Readable"; fi
if [ -w file.txt ]; then echo "Writable"; fi
if [ -x file.txt ]; then echo "Executable"; fi
```

```bash
rows=4
for (( i=1; i<=rows; i++ )); do
    # Inner loop for columns
    for (( j=1; j<=i; j++ )); do
        echo -n "*" #Print* without newline
    done
    echo # Newline after each row
done
```

*(Note: Content from source had comment locations mixed)*

## Example 1: Simple Star Pattern

Pattern:
Script:

```bash
#!/bin/bash
rows=4
#Outer loop for rows
for (( i=1; i<=rows; i++ )); do
    # Inner loop for columns
    for (( j=1; j<=i; j++ )); do
        echo -n "*" #Print without newline
    done
    echo #Newline after each row
done
```

*(Note: Content from source was highly fragmented)*

## 8\. Leap year check

```bash
#!/bin/bash
echo "Enter year: "
read y
if [ \$((y % 400)) -eq 0 ] || ( [ \$((y % 4)) -eq 0 ] && [ \$((y % 100)) -ne 0 ] ); then
    echo "\$y is a Leap Year"
else
    echo "\$y is NOT a Leap Year"
fi
```

*(Note: Content from source had fragmented `if` condition)*

-----

1.  **Create a directory named projects and inside it, create two subdirectories: source and archive.**

    ```bash
    mkdir -p projects/source projects/archive
    ```

2.  **Inside source, create three files: app.py, config.yaml, and README.md.**

    ```bash
    touch projects/source/app.py projects/source/config.yaml projects/source/README.md
    ```

3.  **Copy only the .py and .yaml files to archive without moving README.md.**

    ```bash
    cp projects/source/*.py projects/source/*.yaml projects/archive/
    ```

4.  **Change the permissions of all .yaml files in archive so that:**

      * Owner: read, write, execute
      * Group: read, write
      * Others: no permissions

    That corresponds to rwxrw---- numeric mode 760.

    ```bash
    chmod 760 projects/archive/*.yaml
    ```

5.  **Display the detailed file listing of the archive directory, showing file permissions.**

    ```bash
    ls -l projects/archive
    ```

-----

## Student Record Manager (Menu)

```bash
#!/bin/bash
file=students.txt
while true; do
    echo "1.Add 2.View 3.Search 4.Delete 5.Exit"
    read -p "Enter choice: " ch
    case \$ch in
        1) read -p "Roll Name Marks: " r n m; echo "\$r,\$n,\$m" >> \$file;;
        2) cat \$file;;
        3) read -p "Enter roll to search: " r; grep "^\$r," \$file;;
        4) read -p "Enter roll to delete: " r; grep -v "^\$r," \$file > temp && mv temp \$file;;
        5) exit;;
    esac
done
```

## Display current date and time

```bash
#!/bin/bash
echo "Current date and time: \$(date)"
```

## 2\. Display username and hostname

```bash
#!/bin/bash
echo "Username: \$USER"
echo "Hostname: \$(hostname)"
```

## 3\. List all files in a directory

```bash
#!/bin/bash
echo "Files in current directory:"
ls -l
```

*(Note: Content from source was `1s -1`)*

## 4\. Check if a file exists

```bash
#!/bin/bash
read -p "Enter file name: " file
if [ -f "\$file" ]; then
    echo "\$file exists."
else
    echo "\$file does not exist."
fi
```

## 5\. Check if a directory exists

```bash
#!/bin/bash
read -p "Enter directory name: " dir
if [ -d "\$dir" ]; then
    echo "\$dir exists."
else
    echo "\$dir does not exist."
fi
```

## 6\. Count number of lines, words, and characters in a file

```bash
#!/bin/bash
read -p "Enter file name: " file
if [ -f "\$file" ]; then
    echo "Lines: \$(wc -l < \$file)"
    echo "Words: \$(wc -w < \$file)"
    echo "Characters: \$(wc -c < \$file)"
else
    echo "File not found."
fi
```

*(Note: Content from source was `wc-1`, `wc w`, `wcc`)*

## 7\. Copy files from one directory to another

```bash
#!/bin/bash
read -p "Source file: " src
read -p "Destination directory: " dest
if [ -f "\$src" ] && [ -d "\$dest" ]; then
    cp "\$src" "\$dest"
    echo "File copied."
else
    echo "Invalid file or directory."
fi
```

## 8\. Backup a directory

```bash
#!/bin/bash
read -p "Enter directory to backup: " dir
backup="backup_$(date +%F).tar.gz"
tar -czf \$backup \$dir
echo "Backup created: \$backup"
```

*(Note: Content from source was `backup="backup \$(date +%F).tar.gz"`)*

## 9\. Display system memory usage

```bash
#!/bin/bash
echo "Memory Usage:"
free -h
```

## 10\. Display disk usage

```bash
#!/bin/bash
echo "Disk Usage:"
df -h
```

## 11\. Check if a number is even or odd

```bash
#!/bin/bash
read -p "Enter a number: " num
if [ \$((num % 2)) -eq 0 ]; then
    echo "\$num is even."
else
    echo "\$num is odd."
fi
```

## 12\. Display multiplication table of a number

```bash
#!/bin/bash
read -p "Enter a number: " num
for i in {1..10}; do
    echo "\$num x \$i = \$((num*i))"
done
```

## 13\. Display factorial of a number

```bash
#!/bin/bash
read -p "Enter a number: " n
fact=1
for (( i=1; i<=n; i++ )); do
    fact=$((fact*i))
done
echo "Factorial of \$n is \$fact"
```

## 14\. Check if a number is prime

```bash
#!/bin/bash
read -p "Enter a number: " n
prime=1
for (( i=2; i<=n/2; i++ )); do
    if [ \$((n%i)) -eq 0 ]; then
        prime=0
        break
    fi
done
if [ \$prime -eq 1 ] && [ \$n -ne 1 ]; then
    echo "\$n is prime."
else
    echo "\$n is not prime."
fi
```

## 15\. Find largest of three numbers

```bash
#!/bin/bash
read -p "Enter 3 numbers: " a b c
if [ \$a -gt \$b ] && [ \$a -gt \$c ]; then
    echo "\$a is largest"
elif [ \$b -gt \$c ]; then
    echo "\$b is largest"
else
    echo "\$c is largest"
fi
```

## 16\. Reverse a number

```bash
#!/bin/bash
read -p "Enter a number: " n
rev=0
while [ \$n -gt 0 ]; do
    rev=$((rev*10 + n%10))
    n=$((n/10))
done
echo "Reversed number: \$rev"
```

## all users currently logged in

```bash
#!/bin/bash
echo "Logged in users:"
who
```

*(Note: Content from source was fragmented)*

## 18\. Search for a string in a file

```bash
#!/bin/bash
read -p "Enter file name: " file
read -p "Enter string to search: " str
grep -n "\$str" "\$file"
```

*(Note: Content from source was `grep -n "sete" "Sfile"`)*

## 19\. Rename multiple files by adding prefix

```bash
#!/bin/bash
for file in *.txt; do
    mv "\$file" "new_\$file"
done
echo "Files renamed."
```

*(Note: Content from source was `for file in text do`)*

## 20\. Monitor CPU usage

```bash
#!/bin/bash
echo "CPU usage every 2 seconds (press Ctrl+C to stop):"
top -d 2
```

*(Note: Content from source did not specify command)*
