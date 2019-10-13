# ~/.bashrc
if [[ -n "$DEVSR" ]];then
    exec tmux
fi
alias sl='ls'
alias c='clear'
alias nc='ncat'
PS1="\[\e[1;31m\][nmbr_7]\[\e[1;39m\] \W\[\e[1;32m\] >> \[\e[m\]"
alias ltoc='for i in $(ls);do a=`echo $i| tr "[:lower:]" "[:upper:]" `;mv $i $a ;done'
alias ctol='for i in $(ls);do a=`echo $i| tr "[:upper:]" "[:lower:]" `;mv $i $a ;done'
alias gitacp='f(){ git status; git commit -a -m "$1";git status; git push; unset -f f; }; f'
