# /etc/passwd to csv

Get all user in /etc/passwd in csv file

```sh
echo "User, X, uid, gid, name, folder, shell" > users.csv && sed -e 's/,//g' -e 's/:/,/g' /etc/passwd >> users.csv
```