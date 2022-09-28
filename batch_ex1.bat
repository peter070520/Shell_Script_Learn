@echo off

rem To set up VMs for ssh follow https://inside-docupedia.bosch.com/confluence/display/RCM/SSH+from+h    ost+machine+to+VMs+on+VirtualBox
rem Change usr parameter to VM username and change hostport parameter to the host machine's port that you setup for ssh in VM 
rem usr= <your VM username>
rem hostport = <the host machine's port that you setup for ssh in virtualBox>
set usr= tph6hc
set hostport= 5679

ssh -p %hostport% %usr%@127.0.0.1 "bash hmi_bash.sh"
