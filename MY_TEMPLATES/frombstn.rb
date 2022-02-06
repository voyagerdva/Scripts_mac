k.zhuravlev@aws-bvpn-eu-central-1-pr-v-1:~/scripts$ cat af.sh
#!/bin/bash

function af_enable {
    afctl -n prod $1 $2
}

function af_disable {
    afctl -n prod $1 $2
}

function af_get {
    afctl -n prod get node-maintenance
}

case $1 in
    en)
    node=$2
    af_enable enable $node
    ;;

    dis)
    node=$2
    af_disable disable $node
    ;;

    get)
    if [ -n "$2" ]
    then
        afctl -n prod get node-maintenance | grep "$2"
    else
        afctl -n prod get node-maintenance
    fi
    ;;

    *)
    echo "ERRORRRRR !!!!!"
    ;;
esac
====================================================================================================================

k.zhuravlev@aws-bvpn-eu-central-1-pr-v-1:~/scripts$ cd afctl_group/
k.zhuravlev@aws-bvpn-eu-central-1-pr-v-1:~/scripts/afctl_group$ ll
total 16
drwxrwx--- 2 k.zhuravlev k.zhuravlev 4096 Dec 10 12:44 ./
drwxrwx--- 6 k.zhuravlev k.zhuravlev 4096 Dec 23 22:44 ../
-rwxrwx--- 1 k.zhuravlev k.zhuravlev  692 Dec 10 12:44 afgr.sh*
-rw-rw---- 1 k.zhuravlev k.zhuravlev  417 Dec 10 11:32 createNodeList.py
k.zhuravlev@aws-bvpn-eu-central-1-pr-v-1:~/scripts/afctl_group$ cat afgr.sh
#!/bin/bash


# Go to destination folder and read list from dashboard and write it into /tmp/nodeList.txt:
cd /home/k.zhuravlev/scripts/afctl_group && python3 ./createNodeList.py


# read /tmp/nodeList.txt and takes ONLY NODES NAMES from it. And write correct list into other file /tmp/nodeList2.txt:
grep -Eo "[a-z0-9]{2,3}-[a-z]{1,9}-[a-z0-9]{2,3}-[a-z]{2,3}-pr-[p,v]-[0-9]{1,2}" /tmp/nodeList.txt|sort|uniq > /tmp/nodeList2.txt
cat /tmp/nodeList2.txt
echo ""
echo "================== 3 ========================"

# performance afctl's operations by circle FOR on list from /tmp/nodeList2.txt:
file="/tmp/nodeList2.txt"
for node in $(cat $file)
do
echo " $node"
afctl -n prod $1 $node
done
k.zhuravlev@aws-bvpn-eu-central-1-pr-v-1:~/scripts/afctl_group$ cat createNodeList.py
import os
import sys
import re

print("Enter the list of nodes you want to DISABLE ot ENABLE. Press Enter for finish and CTRL+D for apply:")
nodeList = sys.stdin.read()

print("\n============== 1 =======================")
print(nodeList)

fileNodes = "/tmp/nodeList.txt"

print("\n============== 2 =======================")
print("fileNodes = ", fileNodes)

with open(f"{fileNodes}", "w") as f:
    f.write(nodeList)

==============================================================================================================================================================

total 24
drwxrwx--- 2 k.zhuravlev k.zhuravlev 4096 Dec 23 23:12 ./
drwxrwx--- 6 k.zhuravlev k.zhuravlev 4096 Dec 23 22:44 ../
-rwxrwx--- 1 k.zhuravlev k.zhuravlev  887 Oct 30 10:09 commgr.sh*
-rw-rw---- 1 k.zhuravlev k.zhuravlev  417 Oct 27 19:06 createNodeList.py
-rw-rw---- 1 k.zhuravlev k.zhuravlev  378 Oct  7 06:49 nodes.txt
-rwxrwxrwx 1 k.zhuravlev k.zhuravlev   89 Dec 23 22:33 run.sh*
k.zhuravlev@aws-bvpn-eu-central-1-pr-v-1:~/scripts/command_group$ cat commgr.sh
    #!/bin/bash

    cd /home/k.zhuravlev/scripts/command_group

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
    ######ssh k.zhuravlev@$node.northghost.com sudo shutdown -r +1

    ssh k.zhuravlev@$node.northghost.com $1
    echo "============================================================================================================================================================"
    echo ""
    done


k.zhuravlev@aws-bvpn-eu-central-1-pr-v-1:~/scripts/command_group$
k.zhuravlev@aws-bvpn-eu-central-1-pr-v-1:~/scripts/command_group$ cat createNodeList.py
    import os
    import sys
    import re

    print("Enter the list of nodes you want to DISABLE ot ENABLE. Press Enter for finish and CTRL+D for apply:")
    nodeList = sys.stdin.read()

    print("\n============== 1 =======================")
    print(nodeList)

    fileNodes = "/tmp/nodeList.txt"

    print("\n============== 2 =======================")
    print("fileNodes = ", fileNodes)

    with open(f"{fileNodes}", "w") as f:
        f.write(nodeList)

k.zhuravlev@aws-bvpn-eu-central-1-pr-v-1:~/scripts/command_group$
k.zhuravlev@aws-bvpn-eu-central-1-pr-v-1:~/scripts/command_group$ cat run.sh
    sudo -- sh -c 'cat /root/.ssh/authorized_keys && cat /home/afmaint/.ssh/authorized_keys'

============================================================================================================================================================================

что-то еще вроде не использовал, наверно старое:

k.zhuravlev@aws-bvpn-eu-central-1-pr-v-1:~/scripts/command_group_RUN_echo_sudo_cat_keys$ cat commgr.sh
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
    ######ssh k.zhuravlev@$node.northghost.com sudo shutdown -r +1
    ssh k.zhuravlev@$node.northghost.com 'bash -s' < run.sh
    echo "============================================================================================================================================================"
    echo ""
    done

k.zhuravlev@aws-bvpn-eu-central-1-pr-v-1:~/scripts/command_group_RUN_echo_sudo_cat_keys$
k.zhuravlev@aws-bvpn-eu-central-1-pr-v-1:~/scripts/command_group_RUN_echo_sudo_cat_keys$ cat createNodeList.py
    import os
    import sys
    import re

    print("Enter the list of nodes you want to DISABLE ot ENABLE. Press Enter for finish and CTRL+D for apply:")
    nodeList = sys.stdin.read()

    print("\n============== 1 =======================")
    print(nodeList)

    fileNodes = "/tmp/nodeList.txt"

    print("\n============== 2 =======================")
    print("fileNodes = ", fileNodes)

    with open(f"{fileNodes}", "w") as f:
        f.write(nodeList)

=============================================================================================================================================================

k.zhuravlev@aws-bvpn-eu-central-1-pr-v-1:~$ cat .nanorc
include /usr/share/nano/asm.nanorc
include /usr/share/nano/awk.nanorc
include /usr/share/nano/cmake.nanorc
include /usr/share/nano/c.nanorc
include /usr/share/nano/css.nanorc
include /usr/share/nano/debian.nanorc
include /usr/share/nano/fortran.nanorc
include /usr/share/nano/gentoo.nanorc
include /usr/share/nano/groff.nanorc
include /usr/share/nano/html.nanorc
include /usr/share/nano/java.nanorc
include /usr/share/nano/lua.nanorc
include /usr/share/nano/makefile.nanorc
include /usr/share/nano/man.nanorc
include /usr/share/nano/mgp.nanorc
include /usr/share/nano/mutt.nanorc
include /usr/share/nano/nanorc.nanorc
include /usr/share/nano/objc.nanorc
include /usr/share/nano/ocaml.nanorc
include /usr/share/nano/patch.nanorc
include /usr/share/nano/perl.nanorc
include /usr/share/nano/php.nanorc
include /usr/share/nano/pov.nanorc
include /usr/share/nano/python.nanorc
include /usr/share/nano/ruby.nanorc
include /usr/share/nano/sh.nanorc
include /usr/share/nano/spec.nanorc
include /usr/share/nano/tcl.nanorc
include /usr/share/nano/tex.nanorc
include /usr/share/nano/xml.nanorc
############# SETTINGS: ##########################
set tabsize 4
set tabstospaces
set autoindent
set mouse
set titlecolor yellow,blue
set constantshow
set linenumbers

----------------------------------------------------------------------------------------------------------

k.zhuravlev@aws-bvpn-eu-central-1-pr-v-1:~$ cat .b
.bash_history   .bash_logout    .bashrc         .bashrc_backup  .bsshrc
k.zhuravlev@aws-bvpn-eu-central-1-pr-v-1:~$ cat .bashrc
# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
alias cds='cd ~/scripts'
alias cdb='cd ~/bin'


alias mc='LANG=en_EN.UTF-8 mc'
alias mmc='mc -S darkfar'
alias lla='ll -a'
alias aflogin='afctl vault login k.zhuravlev@alushta.com'