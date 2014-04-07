
alias ll='ls -lh';
alias dusort='du -s * | sort -n';
alias psme='ps -aef | grep ${USER}';
alias rcmd="R CMD BATCH";

HISTCONTROL=ignoredups:ignorespace

export HISTFILESIZE=10000
export EDITOR='vi'

export GREP_OPTIONS='--color=auto'

export PS1="\u@\h:\W\$ "
