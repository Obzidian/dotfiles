# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerline"

POWERLINE_DATE_FORMAT="%D{%d-%m}"
POWERLINE_HIDE_HOST_NAME="true"
POWERLINE_DETECT_SSH="true"
POWERLINE_GIT_CLEAN="✔"
POWERLINE_GIT_DIRTY="✘"
POWERLINE_GIT_ADDED="%F{green}✚%F{black}"
POWERLINE_GIT_MODIFIED="%F{blue}✹%F{black}"
POWERLINE_GIT_DELETED="%F{red}✖%F{black}"
POWERLINE_GIT_UNTRACKED="%F{cyan}✭%F{black}"
POWERLINE_GIT_RENAMED="➜"
POWERLINE_GIT_UNMERGED="═"
POWERLINE_RIGHT_A_COLOR_FRONT="black"
POWERLINE_RIGHT_A_COLOR_BACK="red"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git ruby)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

## Default Programs
export EDITOR="vim"
export PAGER="less"
export BROWSER="firefox"
export MOVPLAY="mpv"
export PICVIEW="feh"
export SNDPLAY="mpv"
export TERMINAL="urxvt"
export PULSE_LATENCY_MSEC=60

# File Extensions
for ext in html org php com net no;      do alias -s $ext=$BROWSER;done
for ext in txt tex py PKGBUILD c cpp;    do alias -s $ext=$EDITOR; done
for ext in png jpg gif;                  do alias -s $ext=$PICVIEW; done
for ext in mpg wmv avi mkv;              do alias -s $ext=$MOVPLAY; done
for ext in wav mp3 ogg;                  do alias -s $ext=$SNDPLAY; done

########################################################################
################################# ALIASES ##############################
########################################################################
## System
alias Shutdown='sudo shutdown -P now'

## Games
alias tetris='bastet'
alias ps2='pcsx2'

## Packages
alias extract='dtrx'
alias gz='tar -xzf'
alias xz='tar -xJf'
alias bz='tar -xvjf'
alias bz2='tar -jxvf'

## Gentoo
alias HowLong='genlop -t'
alias OneShot='time sudo emerge --oneshot portage'
alias Rebuild='time sudo revdep-rebuild -v -- --ask --keep-goin'
alias sync='time sudo eix-sync'
alias I='time sudo emerge -av'
alias Uworld='time sudo emerge -uvDNa world'
alias Uworld-bdeps='time sudo emerge -uvDNa --with-bdeps=y @world'
alias cdP='cd /etc/portage && sudo su'
alias eM='sudo vim /etc/portage/make.conf'

## Portage
alias F='tail -f /var/log/emerge-fetch.log'
alias E='tail -f /var/log/emerge.log'

## Awesome
alias eA='cd ~/.config/awesome && vim rc.lua'
alias eW='cd ~/.config/awesome && vim wi.lua'
alias eT='cd ~/.config/awesome/themes/jonas && vim theme.lua'
alias cdA='cd ~/.config/awesome'
alias cdT='cd ~/.config/awesome/themes/jonas'

## Tmux
alias eTM='vim ~/.tmux.conf'

## Directories
alias space='ncdu'
alias space-color='cdu'
alias ll='ls -l'
alias la='ls -lsa'
alias l='ls'
alias C='clear'
alias se='sudo vim'
alias e='vim'
alias home='cd ~'
alias ..='cd ..'
alias ...='cd ...'
alias ....='cd ....'
alias .....='cd .....'
alias k='exit'
alias lD='ls ~/Downloads'
alias D='cd ~/Downloads'

## YouTube
alias cdYT='cd ~/Downloads/YouTube'
alias cleanYT='rm ~/Downloads/YouTube/*.*'
alias DL='cd ~/Downloads && youtube-dl'

## X Resources Stuff
alias eX='vim ~/.Xdefaults'

## Zsh Stuff
alias eZ='vim ~/.zshrc'
alias Z='source ~/.zshrc'

## Vim Stuff
alias eV='vim ~/.vimrc'
alias e='vim'

## News and Music
alias MP='ncmpcpp'
alias news='newsbeuter'

## Google Calendar
alias gcal-week='gcalcli --width 12 calw'
alias gcal='gcalcli --width 12 calm'
alias gcal-add='gcalcli quick'
alias gcal-agenda='gcalcli agenda'

## Net
## alias iwconfig='/sbin/iwconfig'
alias hogs='sudo nethogs wlp3s0'
alias net-driftnet='echo "see pics from other computers on network" && sudo driftnet -i wlp3s0'
alias net-ettercap='echo "set up interface to capture network data" && sudo ettercap -TQM arp -i wlp3s0 //'
alias net-scan='sudo arp-scan -l -I wlp3s0'
alias net-stat='netstat -t -v -c -ee'
alias net-traf='sudo iptraf-ng'
alias net-bmon='bmon'
alias net-nmap='nmap -v sn'
alias net-fping='fping -c1 -gds 192.168.1.0/24 2>&1| egrep -v "ICMP|xmt"'
alias net-dump='sudo tcpdump -i wlp3s0'
alias net-wifi='wavemon'
alias net-nmon='nmon'
alias net-speedtest='speedtest-cli'
alias net-graph='speedometer -r wlp3s0 -t wlp3s0'
alias graph='nbwmon -i wlp3s0'
alias iftop='sudo iftop -p -n'
alias slurm='slurm -i wlp3s0'

## Power
alias bat='acpi'
alias bat-all='acpi -V'
alias Power='sudo powertop'

## Misc

alias info='inxi -F'
