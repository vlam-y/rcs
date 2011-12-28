#/bin/bash
#############################
### ENVIRONMENT VARIABLES ###
#############################
### MAVEN
export M2_HOME="/vlam/bin/apache-maven-3.0.3"
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

### JAVA
export JAVA_HOME='/vlam/bin/jdk1.7.0'
export JAVA=$JAVA_HOME/bin
export PATH=$JAVA:$PATH

### ANT
export ANT_HOME="$VLAM/bin/apache-ant-1.8.2"
export ANT=$ANT_HOME/bin
export PATH=$ANT:$PATH

### VSADT
export VSADT_HOME="$VLAM/workspace/vsadt.0.0.1/"
export VSADT_DIST=$VSADT_HOME/dist

### CUSTOM_SHELL_SCRIPT
export VLAM="/vlam"
export CUSTOM_CONF_PATH="$VLAM/conf"
export CUSTOM_SCRIPT_PATH=$VLAM/workspace/scripts
export XTERM_WRAPPER_PATH=$CUSTOM_SCRIPT_PATH/wrappers
export VSADT_SCRIPTS_PATH=$CUSTOM_SCRIPT_PATH/vsadt
export VLAM_PYTHON_WKS="$VLAM/workspace/python"
export CUSTOM_BIN_PATH="$VLAM/bin" 

##############
### PROMPT ###
##############
#PS1="\e[34;30m[@desk_\t]\e[32;30m{\W}$ \e[0m"
#PS1="\[\033[34m\]*************\n{@desk_\t}\[\033[36m\]{\W}\n*************$\[\033[0m\] "
#PS1="\[\033[36m\]\n\t (@desk) \w\n$\[\033[0m\] "

############
### PATH ###
############
export PATH=$CUSTOM_BIN_PATH/eclipse:$PATH
export PATH=$CUSTOM_BIN_PATH/xulrunner:$PATH
export PATH=$CUSTOM_BIN_PATH/conkeror:$PATH

###############
### ALIASES ###
###############
alias edcfg="emacsclient -n $CUSTOM_SCRIPT_PATH/custom_env.sh"

# network aliases
alias sshc='ssh -X REMOTE_HOST'

# appz aliases
alias sc_vlam="screen -S sc_vlam -mc /vlam/config/screen/sc_vlam.0.1.conf"
alias am="cd /vlam/workspace/abstract-mediation"
alias amt="cd /vlam/workspace/am-tests"
alias xephyr="sh /vlam/workspace/scripts/awesome/xephyr_test.sh"
alias e="emacsclient -n"
alias apts="apt-cache search"
alias apti="sudo apt-get install"
alias aptu="sudo apt-get update"
alias imapd="python /vlam/workspace/python/daemons/imap_notifd.py start"

#maven aliases
alias mi="mvn install"
alias mist="mvn install -Dmaven.test.skip=true"
alias mci="mvn clean install"
alias mcist="mvn clean install -Dmaven.test.skip=true"
alias mct="mvn clean test"
alias mvnt="mvn test"

alias psg="ps -A | grep"