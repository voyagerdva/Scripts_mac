import
	
	****************** 1 ********************************************
	
	FOR CENTOS & UBUNTU:

cp ~/.bashrc ~/.bashrc_backup
cp ~/.vimrc ~/.vimrc_backup
echo "" >> ~/.bashrc
echo "alias mc='LANG=en_EN.UTF-8 mc'" >> ~/.bashrc
echo "alias mmc='mc -S darkfar'" >> ~/.bashrc
echo "alias mcedit='LANG=en_EN.UTF-8 mcedit'" >> ~/.bsshrc
echo "alias lla='ll -a'" >> ~/.bashrc
echo "" >> ~/.vimrc
echo "set number" >> ~/.vimrc
echo "set tabstop=4" >> ~/.vimrc
echo "set shiftwidth=4" >> ~/.vimrc
echo "set smarttab" >> ~/.vimrc
echo "set expandtab" >> ~/.vimrc
echo "set smartindent" >> ~/.vimrc
echo "set ruler" >> ~/.vimrc
echo "set laststatus=2" >> ~/.vimrc
touch ~/.nanorc

echo "include /usr/share/nano/asm.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/awk.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/cmake.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/c.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/css.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/debian.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/fortran.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/gentoo.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/groff.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/html.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/java.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/lua.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/makefile.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/man.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/mgp.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/mutt.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/nanorc.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/objc.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/ocaml.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/patch.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/perl.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/php.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/pov.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/python.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/ruby.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/sh.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/spec.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/tcl.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/tex.nanorc" >> ~/.nanorc; 
echo "include /usr/share/nano/xml.nanorc" >> ~/.nanorc;
echo "############# SETTINGS: ##########################" >> ~/.nanorc
echo "set tabsize 4" >> ~/.nanorc
echo "set tabstospaces" >> ~/.nanorc
echo "set autoindent" >> ~/.nanorc
echo "set mouse" >> ~/.nanorc
echo "set titlecolor red,green" >> ~/.nanorc
echo "# set const" >> ~/.nanorc
echo "# old_or_new_ver:" >> ~/.nanorc
echo "# set constantshow" >> ~/.nanorc
echo "# set linenumbers" >> ~/.nanorc

echo "set const" >> ~/.nanorc
echo "set constantshow" >> ~/.nanorc
echo "set linenumbers" >> ~/.nanorc
bash

sudo apt install -y jq nano

	 # ls /usr/share/nano
	 # syntax "python" "\.py$" "cfg" "\.cfg$" "conf" "\.conf$"
	 ************** 5 ********************************************
	
for my ZSH:
	
		****************** 1 ********************************************
	 cp ~/.zshrc ~/.zshrc_backup
	 cp ~/.vimrc ~/.vimrc_backup
	 echo "" >> ~/.zshrc
	 echo "alias mmc='mc -S darkfar'" >> ~/.zshrc
	 echo "alias mc='LANG=en_EN.UTF-8 mc'" >> ~/.zshrc
	 echo "alias mcedit='LANG=en_EN.UTF-8 mcedit'" >> ~/.zshrc
	 echo "alias lla='ll -a'" >> ~/.zshrc
	 echo "alias cl=clear" >> ~/.zshrc
	 echo "" >> ~/.vimrc
	 echo "set number" >> ~/.vimrc
	 echo "set tabstop=4" >> ~/.vimrc
	 echo "set shiftwidth=4" >> ~/.vimrc
	 echo "set smarttab" >> ~/.vimrc
	 echo "set expandtab" >> ~/.vimrc
	 echo "set smartindent" >> ~/.vimrc
	 echo "set ruler" >> ~/.vimrc
	 echo "set laststatus=2" >> ~/.vimrc

	 touch ~/.nanorc
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/asm.nanorc" >> ~/.nanorc; 
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/awk.nanorc" >> ~/.nanorc; 
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/cmake.nanorc" >> ~/.nanorc; 
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/c.nanorc" >> ~/.nanorc; 
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/css.nanorc" >> ~/.nanorc; 
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/debian.nanorc" >> ~/.nanorc; 
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/fortran.nanorc" >> ~/.nanorc; 
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/gentoo.nanorc" >> ~/.nanorc; 
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/groff.nanorc" >> ~/.nanorc; 
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/html.nanorc" >> ~/.nanorc; 
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/java.nanorc" >> ~/.nanorc; 
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/lua.nanorc" >> ~/.nanorc; 
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/makefile.nanorc" >> ~/.nanorc; 
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/man.nanorc" >> ~/.nanorc; 
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/mgp.nanorc" >> ~/.nanorc; 
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/mutt.nanorc" >> ~/.nanorc; 
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/nanorc.nanorc" >> ~/.nanorc;
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/objc.nanorc" >> ~/.nanorc; 
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/ocaml.nanorc" >> ~/.nanorc; 
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/patch.nanorc" >> ~/.nanorc; 
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/perl.nanorc" >> ~/.nanorc; 
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/php.nanorc" >> ~/.nanorc; 
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/pov.nanorc" >> ~/.nanorc; 
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/python.nanorc" >> ~/.nanorc; 
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/ruby.nanorc" >> ~/.nanorc; 
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/sh.nanorc" >> ~/.nanorc; 
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/spec.nanorc" >> ~/.nanorc; 
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/tcl.nanorc" >> ~/.nanorc; 
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/tex.nanorc" >> ~/.nanorc; 
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/xml.nanorc" >> ~/.nanorc;

	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/autoconf.nanorc" >> ~/.nanorc;
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/changelog.nanorc" >> ~/.nanorc;
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/default.nanorc" >> ~/.nanorc;
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/elisp.nanorc" >> ~/.nanorc;
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/email.nanorc" >> ~/.nanorc;
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/go.nanorc" >> ~/.nanorc;
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/guile.nanorc" >> ~/.nanorc;
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/javascript.nanorc" >> ~/.nanorc;
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/json.nanorc" >> ~/.nanorc;
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/markdown.nanorc" >> ~/.nanorc;
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/nanohelp.nanorc" >> ~/.nanorc;
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/nftables.nanorc" >> ~/.nanorc;
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/po.nanorc" >> ~/.nanorc;
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/rust.nanorc" >> ~/.nanorc;
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/sql.nanorc" >> ~/.nanorc;
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/texinfo.nanorc" >> ~/.nanorc;
	 echo "include /opt/homebrew/Cellar/nano/5.8/share/nano/yaml.nanorc" >> ~/.nanorc;

	 
	 echo "############# SETTINGS: ##########################" >> ~/.nanorc
	 echo "set tabsize 4" >> ~/.nanorc
	 echo "set tabstospaces" >> ~/.nanorc
	 echo "set autoindent" >> ~/.nanorc
	 echo "# set const" >> ~/.nanorc
	 echo "set constantshow" >> ~/.nanorc
	 echo "set linenumbers" >> ~/.nanorc
	 echo "# set mouse" >> ~/.nanorc
	 echo "set titlecolor red,green" >> ~/.nanorc
	 
	 zsh
	
	 # ls /usr/share/nano
	 # syntax "python" "\.py$" "cfg" "\.cfg$" "conf" "\.conf$"

 
	alias mmc='mc -S darkfar'
	alias mc='LANG=en_EN.UTF-8 mc'
	alias mcedit='LANG=en_EN.UTF-8 mcedit'
	alias lla='ll -a'

	alias cl=clear
	alias cdd='cd ~/SBDGFOLDER/PROJECT/'
	alias cda='cd ~/SBDGFOLDER/PROJECT/ansible-inventory'
	alias cds='cd ~/myscripts'
	alias cdt='cd ~/SBDGFOLDER/PROJECT/static-vars-testcenters'
	alias cre='cd ~/myscripts && ./createEnv.sh'
	alias ui='cd ~/SBDGFOLDER/PROJECT/ && rm -rf ansible-inventory && git clone git@github.com:AnchorFreePartner/ansible-inventory.git && cd ansible-inventory'
	alias ut='cd ~/SBDGFOLDER/PROJECT/ && rm -rf static-vars-testcenters && git clone git@github.com:AnchorFreePartner/static-vars-testcenters.git && cd static-vars-testcenters'

	# ЕЩЕ НУЖНО НАПИСАТЬ СКРИПТЫ:
		alias qq1='cd ~/SBDGFOLDER/PROJECT/ \
					&& rm -rf static-vars-testcenters \
					&& git clone git@github.com:AnchorFreePartner/static-vars-testcenters.git \
					&& cd ~/myscripts \
					&& ./qq1.sh' # поиск ТЦ по одной ноде
		alias qq9='cd ~/SBDGFOLDER/PROJECT/ \
					&& rm -rf static-vars-testcenters \
					&& git clone git@github.com:AnchorFreePartner/static-vars-testcenters.git \
					&& cd ~/myscripts \
					&& ./qq9.sh' # поиск ТЦ по списку нод
		restpy.sh - рестарт контейнера python-monitoring на ноде
=====================================================================================================
	 mcedit F9 o y enter ctrl+o
	 
	 cp /root/.config/mc/mcedit/Syntax /root/.config/mc/mcedit/Syntax_backup
	 sed -i 's/include unknown.syntax/include python.syntax/' /root/.config/mc/mcedit/Syntax
	
	vim ~/.vimrc

	brew install iproute2mac telnet nmap mc nano vim 
 ====================================================================================================================
 mkdir ~/scripts
 
 chmod +x ~/scripts/vssh.sh
 ln -s ~/scripts/vssh.sh ~/bin/vssh
	
	
===========================================================================================================

	find /ARCHIVE/logs/ -maxdepth 1 -type f -name * -ctime -1 exec cp -p {} /ARCHIVE/backup000_logs/logs/ \;
	tar -zcvf /ARCHIVE/logs_for_rnd/logs_for_rnd.tar.gz ./*

=======================================================================
	# crontab -l
	*/1 * * * * sleep 20; /opt/pySpoolerRenamer/spooler_renamer.py --config /opt/pySpoolerRenamer/sniffer/ > /dev/null 2>&1
	*/1 * * * * sleep 40; /opt/pySpoolerRenamer/spooler_renamer.py --config /opt/pySpoolerRenamer/sniffer/ > /dev/null 2>&1
	*/1 * * * * /opt/pySpoolerRenamer/spooler_renamer.py --config /opt/pySpoolerRenamer/sniffer/ > /dev/null 2>&1
	*/20 * * * * find /SQL/cdr_for_kpd4/nat/ -type f -mtime +15 -delete
	*/20 * * * * find /SQL/cdr_for_es/nat/ -type f -mtime +15 -delete
	
=================================== SBDGFOLDER =================================================

sudo kill $(pgrep -f `docker ps -f name=python-monitoring -q`)	

=======================================================================================

	watch 'sudo iptables --line-number -L SELECT_OUTPUT -nv -t nat'
	iptables -nvL -t nat
	
=======================================================================================

	❯ find . -type d -mtime -2|grep IPSEC|grep -riwn '2021-06-19 03:00:29,413 - ERROR - FAILED TO CONNECT TO: 66.203.113.54 PRO_SERVER-2' .
	./1624071578_CL_IPSEC_LOCATION_PRO_prod/test-center.log:39:2021-06-19 03:00:29,413 - ERROR - FAILED TO CONNECT TO: 66.203.113.54 PRO_SERVER-2. Stopping the test

	❯ find . -type d -name "*PRO_SERVER-3_IPSEC_CONNECT_PRO*" -mmin 20

	❯ for i in {7..18} ; do scp ~12221/myscripts/run_mtr/* k.zhuravlev@PRO_SERVER-$i.SOMEDOMENORG.com:/home/k.zhuravlev; done
	❯ for i in {7..18} ; do ssh k.zhuravlev@PRO_SERVER-$i.SOMEDOMENORG.com /home/k.zhuravlev/run_mtr.sh; done
	❯ for i in {7..18} ; do ssh k.zhuravlev@PRO_SERVER-$i.SOMEDOMENORG.com ls /home/k.zhuravlev; done
	❯ for i in {7..18} ; do afctl -n prod enable PRO_SERVER-$i; done
 
	❯ for i in {1..7} ; do ssh k.zhuravlev@TVSERVER-$i.SOMEDOMENORG.com uptime; done

	❯ ping -I 188.241.178.92 1.1.1.1
 
==================== ЧАСТО ИСПОЛЬЗУЕМЫЕ КОМАНДЫ: ==============================

docker restart lecerts && sleep 45 && docker restart ipsec
docker restart agent && sleep 45 && docker restart lecerts && sleep 45 && docker restart ipsec
docker logs -tf THRSTCK

watch 'sudo iptables --line-number -L SELECT_OUTPUT -nv -t nat'

for i in {1..7} ; do ssh k.zhuravlev@TVSERVER-$i.SOMEDOMENORG.com docker logs -t THRSTCK|tail; done

зайти в контейнер и запустить ./update-certs-loop.sh
sudo su -
	root@TVSERVER-4:~# cd /opt/node/
	su docker -c 'docker-compose up -d'
 
cat nodes.txt |egrep -v "ipsec|hydra|ovpn"|sort|uniq > nodes_sort.txt

scp . k.zhuravlev@BCFTCLSNT1.Alushta-internal.com:/~

----------------------------------------------------------------------------------------
#!/bin/bash

file="nodes.txt"
for node in $(cat $file)
do
echo " $node"
ssh k.zhuravlev@$node.SOMEDOMENORG.com uptime
done

=======================================================================================

	Для while, for и if

ss
	while true; do ls; sleep 2; done
	for i in 1 2 3; do mkdir ${i}; done
	if [ "${asd}" = "true" ]; then echo "hellow world"; fi
========================================================================================
#!/bin/bash

file="nodes_tv.txt"
for node in $(cat $file)
do
echo ""
echo " $node"
#ssh k.zhuravlev@$node.SOMEDOMENORG.com sudo shutdown -r +1
ssh k.zhuravlev@$node.SOMEDOMENORG.com docker start THRSTCK
echo "============================================================================================================================================================"
echo ""
done

=======================================================================================

	 
	Hello, we deal with this problem
	Hello, we are fixing the problem

	deal with this problem as soon as possible
	
	presumably the problem is on the provider side

	Hello, Thank you for reaching us. 
	Our colleagues from networking department will looking to this and will get back to you.

	Please don't hesitate to contact us for further assistance'

	Hello, The ticket is assigned to the networking department and my colleagues will come back with an update.
	Best Regards,

	Hello,
	From a technical standpoint, yes, we may easily migrate it. 
	Please confirm it's in order for us to do that, and by that I mean make sure that no services will suffer downtime in the process.
	Looking forward in hearing from you.

	roll back to original settings

	Thank you for lettings us know.
	Please don't hesitate to contact us for further assistance.
	I guess it will  be finished today

	Hello,
	Could you please reinstall OS on . 
	We need standard Ubuntu 16.04 x64 without RAID.
	Please provide us new credentials. 
	Thanks in advance.


	Hello, Your support request has been received. 
	We are investigating this and we will come back with an update as soon as possible.
	Please don't hesitate to contact us for further assistance.
	'

==================================================================


alias cvs="grc --colour=auto cvs"
alias diff="grc --colour=auto diff"
alias esperanto="grc --colour=auto esperanto"
alias gcc="grc --colour=auto gcc"
alias irclog="grc --colour=auto irclog"
alias ldap="grc --colour=auto ldap"
alias log="grc --colour=auto log"
alias netstat="grc --colour=auto netstat"
alias ping="grc --colour=auto ping"
alias proftpd="grc --colour=auto proftpd"
alias traceroute="grc --colour=auto traceroute"
alias wdiff="grc --colour=auto wdiff"
alias dig="grc --colour=auto dig"
alias ll="grc --colour=auto ls -l"
alias cat="grc --colour=auto cat"
alias zcat="grc --colour=auto zcat"
alias make="grc --colour=auto make"
alias gcc="grc --colour=auto gcc"
alias g++="grc --colour=auto g++"
alias head="grc --colour=auto head"
alias mount="grc --colour=auto mount"
alias ps="grc --colour=auto ps"
alias mtr="grc --colour=auto mtr"
alias zgrep="grc --colour=auto zgrep"

===========================================================================================
cat /etc/ssh/sshd_config | grep torkhov && cat /etc/passwd | grep torkhov
cat /etc/ssh/sshd_config |grep -E "zhur|i.SOMEUSER_2|emel" && cat /etc/passwd |grep -E "zhur|i.SOMEUSER_2|emel"
cat /etc/ssh/sshd_config |grep -E "i.SOMEUSER_2|emel" && cat /etc/passwd |grep -E "i.SOMEUSER_2|emel"
===========================================================================================

	source export_vault_token.sh

	# коннект к ВПН-бастиону:
	vault_ssh.sh k.zhuravlev@SOMEBSTN.Alushta-internal.com

	# с ВПН-бастиона коннект к afctl-бастину:
	ssh k.zhuravlev@BCFTCLSNT1.Alushta-internal.com


	afctl vault login k.zhuravlev@anchorfree.com
	sign_public_key.sh
-----------------------------------------------------------------
	!!! как КОПИРОВАТЬ что-то с ноды на бастион в дом.папку: !!!
	k.zhuravlev@SOMEBSTN:~$ scp k.zhuravlev@PRO_SERVER-2.SOMEDOMENORG.com:/etc/update-motd.d/*.tar.gz ~
==========================================================================================

PING ВСЕХ УСТРОЙСТВ В УКАЗАННОЙ ПОДСЕТИ
ping -b -c 4 192.168.1.255


ansible prod_tv -f 2 -i ./inventory --private-key=~/.ssh/id_rsa_af_maint -u root -m shell -a "docker restart agent; docker restart gateway; sleep 45;"

commgr 'docker restart agent; docker restart gateway; sleep 45;'
---------------------------------------------------------------------------------------------------------------------------------------------------
commgr 'cat /etc/ssh/sshd_config |grep -E "SOMEBODY_1" && cat /etc/passwd |grep -E "SOMEBODY_1"' > /tmp/ivan.txt && cat /tmp/ivan.txt |grep -B1 ivanyuk
=========================================================================================================================================================

	k.zhuravlev@SOMEBSTN:~/scripts/command_group_RUN_echo_sudo_cat_keys$ ll
	total 24
	drwxrwx--- 2 k.zhuravlev k.zhuravlev 4096 Dec 24 02:11 ./
	drwxrwx--- 6 k.zhuravlev k.zhuravlev 4096 Dec 23 22:44 ../
	-rwxrwx--- 1 k.zhuravlev k.zhuravlev  926 Dec 23 23:13 commgr.sh*
	-rw-rw---- 1 k.zhuravlev k.zhuravlev  417 Dec 23 22:44 createNodeList.py
	-rw-rw---- 1 k.zhuravlev k.zhuravlev  378 Dec 23 22:44 nodes.txt
	-rwxrwx--- 1 k.zhuravlev k.zhuravlev 1681 Dec 24 00:28 run.sh*
	k.zhuravlev@SOMEBSTN:~/scripts/command_group_RUN_echo_sudo_cat_keys$ cat run.sh
	#sudo -- sh -c 'echo "ssh-rsa SOMETEXT" >> /root/.ssh/authorized_keys'
	#sudo -- sh -c 'echo "ssh-rsa SOMETEXT" >> /home/IMPORTANTUSER/.ssh/authorized_keys'
	sudo -- sh -c 'cat /root/.ssh/authorized_keys && uptime && cat /home/IMPORTANTUSER/.ssh/authorized_keys'
--------------------------------
	k.zhuravlev@SOMEBSTN:~/scripts/command_group_RUN_echo_sudo_cat_keys$ cat commgr.sh
	#!/bin/bash

	cd /home/k.zhuravlev/scripts/command_group_RUN_echo_sudo_cat_keys

	# read list from dashboard and write it into /tmp/nodeList.txt:
	python3 ./createNodeList.py

	# read /tmp/nodeList.txt and takes ONLY NODES NAMES from it. And write correct list into other file /tmp/nodeList2.txt:
	grep -Eo "[a-z0-9]{2,3}-[a-z]{1,9}-[a-z0-9]{2,3}-[a-z]{2,3}-[d,v,s,t,p,r]{2}-[p,v]-[0-9]{1,2}" /tmp/nodeList.txt|sort|uniq > /tmp/nodeList2.txt
	echo "==="
	cat /tmp/nodeList2.txt
	echo "==="

	# performance operation by circle FOR on list from /tmp/nodeList2.txt:
	file="/tmp/nodeList2.txt"
	for node in $(cat $file)
	do
	echo ""
	echo " $node"
	######ssh k.zhuravlev@$node.SOMEDOMENORG.com sudo shutdown -r +1
	ssh k.zhuravlev@$node.SOMEDOMENORG.com 'bash -s' < run.sh
	echo "============================================================================================================================================================"
	echo ""
	done
	

	============ 2021-12-23 =======================================================================
	ЗАМЕНА ПРИВАТНОГО КЛЮЧА НА НЕСКОЛЬКИХ СЕРВЕРАХ СКРИПТОМ
	:
	
	..  1) TC
	
	
	sudo cat /root/.ssh/authorized_keys
	sudo cat /home/IMPORTANTUSER/.ssh/authorized_keys
	
	-----------------------
	echo "ssh-rsa SOMETEXT" >> /root/.ssh/authorized_keys
	echo "ssh-rsa SOMETEXT" >> /home/IMPORTANTUSER/.ssh/authorized_keys
	sudo cat /root/.ssh/authorized_keys
	sudo cat /home/IMPORTANTUSER/.ssh/authorized_keys
	-----------------
	cat /root/.ssh/authorized_keys && cat /home/IMPORTANTUSER/.ssh/authorized_keys
	-----------------
	sudo -- sh -c 'echo "ssh-rsa SOMETEXT" >> /root/.ssh/authorized_keys && cat /root/.ssh/authorized_keys'
	sudo -- sh -c 'echo "ssh-rsa SOMETEXT" >> /home/IMPORTANTUSER/.ssh/authorized_keys && cat /home/IMPORTANTUSER/.ssh/authorized_keys'
	-----------------
	sudo -- sh -c 'echo "ssh-rsa SOMETEXT" >> /root/.ssh/authorized_keys'
	uptime
	sudo -- sh -c 'echo "ssh-rsa SOMETEXT" >> /home/IMPORTANTUSER/.ssh/authorized_keys'
	
	--- FINISH VARIANT: -------------------------------------------------------------------------------------------------------------------
		скрипт run.sh:
		sudo -- sh -c 'echo "ssh-rsa SOMETEXT" >> /root/.ssh/authorized_keys'
		sudo -- sh -c 'echo "ssh-rsa SOMETEXT" >> /home/IMPORTANTUSER/.ssh/authorized_keys'
		sudo -- sh -c 'cat /root/.ssh/authorized_keys && uptime && cat /home/IMPORTANTUSER/.ssh/authorized_keys'
	
		запускаем в цикле:
		  for node in $(cat $file)
			do
			ssh k.zhuravlev@$node.SOMEDOMENORG.com 'bash -s' < run.sh
			done
	


