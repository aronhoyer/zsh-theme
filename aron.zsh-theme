# directory info
local current_dir='${PWD/#$HOME/~}'

local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[black]%}git:%{$reset_color%}%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"

PROMPT="
%{$fg_bold[black]%}%n \
%{$reset_color%}\
%{$fg_bold[blue]%}$current_dir
%{$reset_color%}\
%{$fg_bold[black]%}> %{$reset_color%}"

RPROMPT="$git_info"

if [[ "$USER" == "root" ]]; then
PROMPT="
%{$fg_bold[red]%}%n \
%{$fg_bold[balck]%}$current_dir \
$git_info
%{$terminfo[bold]$fg_bold[black]%}# %{$reset_color%}"
fi
