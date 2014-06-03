#User specific aliases and functions:
alias ls='ls -h --color=auto'
export PS1='\[\033[01;32m\]\u@\h \[\033[01;31m\]\W\[\033[01;31m\]]$ \[\033[00m\]'

#User specific environment and startup programs:
export LANG=en_US.UTF-8
export TERM=rxvt-unicode
export PATH=$PATH:/home/luhkevin/bin
export PATH=$PATH:/opt/android-sdk/tools
export PATH=$PATH:/opt/android-sdk/platform-tools
export PATH=$PATH:/opt/celtx/

export ANDROID_HOME=/opt/android-sdk/build-tools
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'

export EDITOR="vim"

#For deep, often used directories
export MARKPATH=$HOME/.marks

function jump {
    cd -P "$MARKPATH/$1" 2> /dev/null || echo "No such mark: $1"
}

function mark {
    mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}

function unmark {
    rm -i "$MARKPATH/$1"
}

function marks {
    ls -l "$MARKPATH" 
}

