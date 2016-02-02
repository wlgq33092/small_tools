#! /bin/sh

passwd=$3

expect -c "
    set timeout 5
    spawn scp -r $1 $2;
    expect {
        \"*password:\" { send \"$passwd\r\";}
    }
    expect eof;
"
