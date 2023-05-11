                                
#!/bin/bash
echo -n "please enter your user: "
read user  
echo -n "please enter your password: "
read password
echo "show databases;" | mysql -u $user --password=$password  
echo -n " enter database_name "
read database_name
echo "dumping $database_name"

mysqldump -u $user --password=$password $database_name > "data-bases.sql"




