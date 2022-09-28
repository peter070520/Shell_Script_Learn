#!/bin/bash

find_result=`find ~/ -maxdepth 1 -name hmi_bash.sh`
if [[ -z $find_result ]]
then
    touch ~/hmi_bash.sh
fi

echo -e '#!/bin/sh\necho "hmi_bash.sh have just been executed"' > ~/hmi_bash.sh
#make the hmi_bash.sh to be executable
chmod 755 ~/hmi_bash.sh

find_demo=`find ~/ -maxdepth 1 -name Demo`
if [[ -z $find_demo ]]
then
    mkdir ~/Demo
fi

find_hello=`find ~/Demo -maxdepth 1 -name hello.txt`
if [[ -z $find_demo ]]
then
    touch ~/Demo/hello.txt
fi

echo "Hello world" > ~/Demo/hello.txt
if [[ $? == 0 ]]
then 
    echo "Written \" Hello world \" into Demo/hello.txt"
fi

cp ~/hmi_bash.sh ~/Demo/
if [[ $? == 0 ]]
then 
    echo End
fi
