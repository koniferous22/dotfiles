# Inspiration: https://blog.carbonfive.com/writing-zsh-themes-a-quickref/

right_triangle() {
   echo $'\ue0b0'
}

prompt_indicator() {
   echo $'%B\u276f%b'
}

arrow_start() {
   echo "%{$FG[$ARROW_FG]%}%{$BG[$ARROW_BG]%}%B"
}

arrow_end() {
   echo "%b%{$reset_color%}%{$FG[$NEXT_ARROW_FG]%}%{$BG[$NEXT_ARROW_BG]%}$(right_triangle)%{$reset_color%}"
}

location_override_notifier() {
   if [[ $LOCATION_OVERRIDE ]]; then
      echo "[OVERRIDDEN] "
   fi
}

location () {
   ARROW_FG="016"
   ARROW_BG="015"
   NEXT_ARROW_BG="183"
   NEXT_ARROW_FG="015"
   OVERRIDE_NOTIFIER=
   echo "$(arrow_start) $LOCATION $(location_override_notifier)$(arrow_end)"
}

directory() {
   ARROW_FG="016"
   ARROW_BG="183"
   NEXT_ARROW_BG="139"
   NEXT_ARROW_FG="183"
   echo "$(arrow_start) %2~ $(arrow_end)"
}

git_prompt() {
   ARROW_FG="016"
   ARROW_BG="139"
   NEXT_ARROW_BG="096"
   NEXT_ARROW_FG="139"
   echo "$(arrow_start) $(git_prompt_info)$(git_prompt_status) $(arrow_end)"
}

unused_slot() {
   ARROW_FG="016"
   ARROW_BG="096"
   NEXT_ARROW_BG=""
   NEXT_ARROW_FG="096"
   echo "$(arrow_start) $(arrow_end)"
}

current_time() {
   echo "%{$fg[white]%}%*%{$reset_color%}"
}

# set the git_prompt_info text
ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} %{%G✚%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} %{%G✹%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} %{%G✖%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} %{%G➜%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} %{%G═%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[white]%} %{%G✭%}"

PROMPT='$(location)$(directory)$(git_prompt)$(unused_slot)
$(prompt_indicator) '
RPROMPT="TTY $TTY $(current_time)"
