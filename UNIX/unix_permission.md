# Permission on UNIX system
File ownership is an important component of Unix that provides a secure method for storing files. Every file in Unix has the following attributes.
* **Owner Permission :** The owner's permissions determine what actions the owner of the file can perform on the file.
* **Group Permission :** The group's permissions determine what actions a user, who is a member of the group that a file belongs to, can perform on the file.
* **Other Permission :** The permissions for others indicate what action all other users can perform on the file.

## File Access

The basic building blocks of Unix permissions are the read, write, and execute permissions, which have been described below.
* **Read :** Grants the capability to read, view the contents of the file.
* **Write :** Grants the capability to modify, or remove the content of the file.
* **Execute :** User with execute permissions can run a file as a program. For a folder, execute has the role of allowing you to move around in the directory.

## Permission Indicators
While using ls -l command, it displays various information related to file permission as follows :
```shell
$ls -l /home/amrood
```
```shell
-rwxr-xr--  1 amrood   users 1024  Nov 2 00:10  myfile
drwxr-xr--- 1 amrood   users 1024  Nov 2 00:10  mydir
```
we write side by side the rights r, w then x respectively for the owner (u), the group (g) and the other users (o).

     rwxr-xr--
     \ /\ /\ /
      v  v  v
      |  |  right for other user (o)
      |  |
      |  right for user in a group (g)
      |
      right for the owner (u)

Another way to represent these rights is in binary form thanks to a numerical key based on the correspondence between a decimal number and its binary expression: 
* 0 = 000
* 1 = 001
* 2 = 010
* 3 = 011
* 4 = 100
* 5 = 101
* 6 = 110
* 7 = 111

## SUID Right

