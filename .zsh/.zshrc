# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$ZDOTDIR/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="steeef" # set by `omz`

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vscode dirhistory systemd autopep8 sudo rust ripgrep zoxide web-search qrcode history emoji archlinux fzf genpass)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source $ZDOTDIR/catppuccin-zsh-syntax-highlighting/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh
source $ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZDOTDIR/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZDOTDIR/zsh-history-substring-search/zsh-history-substring-search.zsh
source $ZDOTDIR/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.zsh/.p10k.zsh.
[[ ! -f $ZDOTDIR/.p10k.zsh ]] || source $ZDOTDIR/.p10k.zsh
# [[ ! -f $ZDOTDIR/powerlevel10k/config/p10k-robbyrussell.zsh ]] || source $ZDOTDIR/powerlevel10k/config/p10k-robbyrussell.zsh
# Load secrets such as API keys
[[ ! -f ~/.secrets ]] || source ~/.secrets

# Enable vim mode
bindkey -v
bindkey jk vi-cmd-mode


# Remap caps lock to ctrl
#setxkbmap -option caps:ctrl_modifier

# Set environment variables
export GCM_CREDENTIAL_STORE=secretservice
export PATH="$PATH:$HOME/cf:$HOME/node_modules/.bin"
export PATH=~/.local/bin/:$PATH
export TerminalEmulator=kitty
export EDITOR=nvim
export BROWSER=brave
export GOPATH=$HOME/go/pkg
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# Aliases
alias brave='brave --password-store=kwallet5'
alias ls='exa --icons --group-directories-first' # Can also use lsd
alias icat="kitty +kitten icat"
# -S +hdr removes hdr videos
# https://github.com/yt-dlp/yt-dlp/issues/7541
alias ytb="yt-dlp -S +hdr -f 'bestaudio+bestvideo'"
alias ytbx264="yt-dlp -S +hdr -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]'"
alias ytp="yt-dlp -S +hdr -f 'bestvideo[height<=1080]+bestaudio'"
alias ytpx264="yt-dlp -S +hdr -f 'bestvideo[ext=mp4][height<=1080]+bestaudio[ext=m4a]'"
alias sudoreset="faillock --user $USER --reset"
alias yt-dlp-update="DISPLAY= pip install git+https://github.com/yt-dlp/yt-dlp/@master --break-system-packages"
alias vi="nvim"
alias vim="nvim"
alias display_normal="xrandr --output HDMI-1 --brightness 1.0"
alias display_dim="xrandr --output HDMI-1 --brightness 0.1"
alias display_invert="xrandr --output HDMI-1 --brightness -1"
alias display_brightness="xrandr --verbose --current --props | grep 'Brightness'"
alias xcp="xclip -selection clipboard"
alias pycharm="$HOME/_manual-installs/pycharm-2023.2.3/bin/pycharm.sh"
alias sshk="kitty +kitten ssh"
alias vnetstart="sudo virsh net-start default"
alias ws="darkhttpd . --port 8080 --addr 0.0.0.0"
alias threadcount="ps -o nlwp"
alias mirror="wget -e robots=off --mirror --convert-links --adjust-extension --page-requisites --no-parent" # Some more options : --random-wait / --wait=1h
# Make a local pacman cache for VMs, machines on local network
# Run this first ln -s /var/lib/pacman/sync/*.db /var/cache/pacman/pkg/
# https://wiki.archlinux.org/title/pacman/Tips_and_tricks#Custom_local_repository
alias pacnet="darkhttpd /var/cache/pacman/pkg --port 8000 --addr 0.0.0.0"
alias threadcount="ps -o nlwp"
alias cfg='/usr/bin/git --git-dir=/home/shank/.dotfiles/ --work-tree=/home/shank'
alias lsi="stat -c '%A %a %h %U %G %s %y %n'"
alias ze="nvim $ZDOTDIR/.zshrc"
alias zs="source $ZDOTDIR/.zshrc"
alias dut='sudo du -hs * | sort -h -r | head -n10'
alias fun='xxd /dev/urandom | lolcat'
alias updatemirrors='sudo reflector --save /etc/pacman.d/mirrorlist --verbose --country IN --country DE --country AU --country KR --country JP --verbose --latest 15 --sort rate'
alias docs='(cd /usr/share/doc/arch-wiki/html && ws)'
alias uefi='systemctl reboot --firmware-setup'


# Other tips and tricks
# ======================
# Increase brightness of external monitor
# sudo ddcutil setvcp 10 + 25 --display 1

# Writing raspberry pi imagages to sd card
# xz -d < <image>.img.xz - | dd of=/dev/<drive>

# Fun
# https://www.reddit.com/r/linuxquestions/comments/kfkrr8/what_is_the_most_esoteric_features_of_linux_world/?rdt=56524
[ -f "/home/shank/.ghcup/env" ] && source "/home/shank/.ghcup/env" # ghcup-env
export TERMINAL="kitty"
# Other apps which are useful: mpv, zathura, feh, ranger
eval "$(zoxide init zsh)"
export GIT_ASKPASS=/usr/bin/ksshaskpass
export QT_QPA_PLATFORMTHEME=qt5ct
export PATH="$PATH:$HOME/.fluttersdk/flutter:$HOME/.fluttersdk/flutter/bin"
source "$HOME/.cargo/env"
# br "Series.*(S\d+E\d+).*(mkv|srt|mp4)$" 'Series${1}.${2}'

# pnpm
export PNPM_HOME="/home/shank/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
source /usr/share/wikiman/widgets/widget.zsh

alias c='cd $(dirname $(fzf))'

export HISTSIZE=100000
export HISTFILESIZE=10000000
alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"
alias passwordbox="GDK_BACKEND=x11 yad --text-align=center --entry --entry-label="" --hide-text --no-buttons --close-on-unfocus --title="" --width=200 --borders=0 --undecorated --geometry=50x10+0+0 --skip-taskbar"

