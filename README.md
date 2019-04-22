# Personal zsh prompt

Configured almost just how I like it.

## Installation

```sh
git clone https://github.com/aronhoyer/zsh-theme.git $ZSH_CUSTOM/themes/aron
ln -s $ZSH_CUSTOM/themes/aron/aron.zsh-theme $ZSH_CUSTOM/themes/aron.zsh-theme
```

## Usage

This theme depends on the `shrink-path` plugin that comes bundled with oh-my-zsh.

```sh
# Set theme
ZSH_THEME="aron"

# Set plugins
plugins=(shrink-path)

source $ZSH/.oh-my-zsh.sh
```
