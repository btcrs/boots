# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

autoload colors && colors
export battery=$HOME/Dotfiles/bin/battery

if (( $+commands[git] ))
then
  git="$commands[git]"
else
  git="/usr/bin/git"
fi

git_branch() {
  echo $($git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  if $(! $git status -s &> /dev/null)
  then
    echo ""
  else
    if [[ $($git status --porcelain) == "" ]]
    then
      echo " on %{$fg_bold[green]%}$(git_prompt_info)%{$reset_color%}"
    else
      echo " on %{$fg_bold[red]%}$(git_prompt_info)%{$reset_color%}"
    fi
  fi
}

git_prompt_info () {
 ref=$($git symbolic-ref HEAD 2>/dev/null) || return
# echo "(%{\e[0;33m%}${ref#refs/heads/}%{\e[0m%})"
 echo "${ref#refs/heads/}"
}

unpushed () {
  $git cherry -v @{upstream} 2>/dev/null
}

need_push () {
  if [[ $(unpushed) == "" ]]
  then
    echo " "
  else
    echo " with %{$fg_bold[green]%}unpushed%{$reset_color%}"
  fi
}

directory_name() {
  echo "%{$fg_bold[cyan]%}%1/%\/%{$reset_color%}"
}

export VIRTUAL_ENV_DISABLE_PROMPT=1

function venv() {
    if [ -n "$VIRTUAL_ENV" ]; then
        if [ -f "$VIRTUAL_ENV/__name__" ]; then
            local name=`cat $VIRTUAL_ENV/__name__`
        elif [ `basename $VIRTUAL_ENV` = "__" ]; then
            local name=$(basename $(dirname $VIRTUAL_ENV))
        else
            local name=$(basename $VIRTUAL_ENV)
        fi
        echo " under %{$fg_bold[magenta]%}$name%{$reset_color%}"
    fi
}

function battery_charge {
    echo `$battery` 2>/dev/null
}

PROMPT=$'\nin $(directory_name)$(git_dirty)$(venv)$(need_push)\n› '
#RPROMPT='$(battery_charge)'
