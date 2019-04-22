setopt prompt_subst

local current_dir='$(shrink_path -f)'

local git_info='%{$fg[green]%}$(git_prompt_info)%{$reset_color%}'
ZSH_THEME_GIT_PROMPT_PREFIX="[git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="]"

PROMPT="
%{$fg_bold[magenta]%}$USER %{$reset_color%}@ \
%{$fg_bold[blue]%}$current_dir
%{$terminfo[bold]$reset_color%}> "

RPROMPT="%{$reset_color%}$git_info"

if [[ "$USER" == "root" ]]; then
PROMPT="
%{$fg_bold[magenta]%}$USER %{$reset_color%}@ \
%{$fg_bold[magenta]%}${current_dir}
%{$reset_color%}# "

RPROMPT="%{$reset_color%}$git_info"
fi