export PS1="\[\e[35;1m\]\u@\h - \[\e[32;1m\]\t \[\e[31;1m\]\w\[\e[32;1m\]\\$\[\e[36;1m\] "
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
alias ll="ls -hl"
alias la="ls -ah"
alias l="ls -alh"
export PATH=$PATH:/usr/local/sbin:$HOME/script/

source ~/git-completion.bash

alias em='/usr/local/Cellar/emacs/24.3/bin/emacs'

export PROJECT_ROOT="/Users/Victor/Public/www/rainbow/blog"
export OPEN_SOURCE="/Users/Victor/Public/open-source"


#source ~/scripts/tmux_session.sh

if [ ! -z "$PS1" ]; then
    _tmuxrc="$HOME/scripts/.bashrc.tmux"
    if [ -e $_tmuxrc ]; then
        source $_tmuxrc
        _tmux-init-history
    fi
fi
##
# Your previous /Users/Victor/.profile file was backed up as /Users/Victor/.profile.macports-saved_2014-02-18_at_09:59:26
##

# MacPorts Installer addition on 2014-02-18_at_09:59:26: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

function nginxctl {
    if [ $1 == "reload" ]; then
        echo "Unloading Nginx..."
        sudo launchctl unload -w /Library/LaunchDaemons/org.mxcl.nginx.plist
        wait
        echo "Loading Nginx..."
        sudo launchctl load -w /Library/LaunchDaemons/org.mxcl.nginx.plist
    elif [ $1 == "unload" ]; then
        echo "Unloading Nginx..."
        sudo launchctl unload -w /Library/LaunchDaemons/org.mxcl.nginx.plist
    elif [ $1 == "load" ]; then
        echo "Loading Nginx..."
         launchctl load -w /Library/LaunchDaemons/org.mxcl.nginx.plist
    else
        echo "Command $1 unsupported"
    fi
}