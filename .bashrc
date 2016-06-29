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

PS1='\[\e[0;32m\][\u@\h]\[\e[0;37m\]\w\n% '

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
########################################
# setting PATH
export JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")
export PATH=$PATH:$JAVA_HOME/bin
export PATH=$PATH:/home/gpu/Downloads/idea-IU-143.2287.1/bin
export PATH=$PATH:/home/gpu/Downloads/clion-1.2.4/bin
# opencv
PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/lib/pkgconfig
export PKG_CONFIG_PATH
#標準Hadoop2.6.0
#export PATH=$PATH:/home/gpu/local/hadoop-2.6.0/bin
#export HADOOP_HOME=/home/gpu/local/hadoop-2.6.0
#export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
#export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib"

#標準Hadoop2.7.0
#export PATH=$PATH:/home/gpu/local/hadoop/hadoop-dist/target/hadoop-2.7.0/bin
#export HADOOP_HOME=/home/gpu/local/hadoop/hadoop-dist/target/hadoop-2.7.0
#export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
#export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib"

#gpu対応Hadoop2.6.0
export PATH=$PATH:/home/gpu/hadoop-learning/hadoop/hadoop-dist/target/hadoop-2.6.0/bin
export HADOOP_HOME=/home/gpu/hadoop-learning/hadoop/hadoop-dist/target/hadoop-2.6.0
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib"

# source /home/gpu/workspace/Structure/kinect/OpenNI-Linux-x64-2.2/OpenNIDevEnvironment
export PATH=$PATH:/usr/local/cuda-7.5/bin
export LD_LIBRARY_PATH=/usr/local/cuda-7.5/lib64:$LD_LIBRARY_PATH
# export LD_LIBRARY_PATH=/usr/lib/OpenNI2/Drivers:$LS_LIBRARY_PATH
#export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
source /opt/ros/indigo/setup.bash
