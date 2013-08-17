# prompt style (blue background, with git branch)
function parse_git_branch {
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\e[0;44m\][\u@\h:\W]\$(parse_git_branch) $ \[\e[0m\]"

#green background version, without git branch
#export PS1="\[\e[0;42m\][\u@\h:\W] $ \[\e[0m\]"
