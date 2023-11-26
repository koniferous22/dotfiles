# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/konyferous/.oh-my-zsh"

# ┌───────────────────────┐
# │                       │
# │ CUSTOM CONFIG - BEGIN │
# │                       │
# └───────────────────────┘

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="koniferski"
GIT_AUTO_FETCH_INTERVAL=1200

chpwd_functions+=("zsh_chpwd_play_mp3")

# ┌─────────────────────┐
# │                     │
# │ CUSTOM CONFIG - END │
# │                     │  
# └─────────────────────┘

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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


# ┌─────────────────────────────┐
# │                             │
# │ CUSTOM PLUGIN NOTES - BEGIN │
# │                             │
# └─────────────────────────────┘
# [Plugin explanations]
# * bgnotify ~> custom bash functions for long-running commands
# * catimg ~> cats image to terminal
# * (NYI) colorize ~ syntax highligher + `ccat` command
#   * REQUIRES GO DEPENDENCY
# * grc ~ generic colorizer + `grcat` command (made by slovak)
# * history-substring=search ~> some weird history search keybinding, might be userful
#   * NOT YET LEARNED
# * lpass ~> lastpass cli
#   * there is also an open source UNIX password manager called "pass" if i want to store it on-prem
# * marktext ~> Electron-based markdown editor from flathub
# * qrcode ~> generate qr codes from CLI
#   * tested 21.5.2023 - not working
# * sigstore ~> certificate management
# * sprunge ~> paste bin from terminal
# * sudo ~> autoprepends "sudo" on double <ESC> keyboard hit
# * torrent ~> utila for creating a magnet links + provides "magnet_to_torrent" command
# * urltools ~> CLI option for escaping url characters
#   * calls programming language runtimes (node, python)
# * vagrant_prompt ~> prompts vagrant VMs with
# * virtualenvwrapper ~> some python venv utils
# * vi-mode ~> zsh vi-mode
# [Tools that I likely forgot about but should think of zsh plugins in advance]
# * cabal ~> haskell build tool
# * jenv ~> java version manager
# * juju ~> exotic container orchestration
# * kitchen ~> chef testing framework
# * kops ~> kubernetes production cluster setup
# * lxd ~> LXC - i.e. low level dockerd
# * mosh ~> ssh for roaming long distance connections
#   * Something that I shoul've used during pdfa development
# * pep8 ~> python linter (atm renamed to "pycodestyle")
# * rake-fast ~> autocompletion for Rakefile with caching by generating ".rake_tasks" on change
# * salt ~> config management
# * spring ~> spring-boot java projects
# * stack ~> haskell package manager
# * Sublime-merge ~> Git client from sublime
# * swift -> UI framework
#   * works on fedora
# * timer ~> display command executionon as RPROMPT
# * tugboat ~> tool for interacting with digital ocean droplets
# * ufc ~> uncomplicated firewall
# * vundle ~> vim plugin manager
# * web-search ~> aliases for web search
#   * https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/web-search
# [Interesting commands summary]
# `ccat` from "colorize"
# `grcat` from "grc"
# `sprunge` from "sprunge"
# `manget_to_torrent` from "torrent"
# ┌───────────────────────────┐
# │                           │
# │ CUSTOM PLUGIN NOTES - END │
# │                           │
# └───────────────────────────┘
plugins=(ansible aws cabal catimg dnf docker docker-compose emoji gcloud gh golang grc heroku history-substring-search istioctl jenv juju kitchen knife knife_ssh kops kubectl lxd minikube mosh node npm nvm pep8 perl pip pipenv pm2 poetry pylint python rails rake-fast react-native redis-cli rsync ruby rust rvm salt scala spring sprunge stack sublime sudo swiftpm terraform themes timer torrent tugboat ufw vagrant yarn web-search)

# ┌─────────────────────────────────────┐
# │                                     │
# │ CUSTOM PLUGIN CONFIGURATION - BEGIN │
# │                                     │
# └─────────────────────────────────────┘
# "web-search" plugin configuration - custom search engines``
ZSH_WEB_SEARCH_ENGINES=(
    wikipedia "https://en.wikipedia.org/w/index.php?search="
)
# "vi-mode" plugin configuration
VI_MODE_SET_CURSOR=true
MODE_INDICATOR="%F{white}+%f"
INSERT_MODE_INDICATOR="%F{yellow}+%f"

# ┌───────────────────────────────────┐
# │                                   │
# │ CUSTOM PLUGIN CONFIGURATION - END │
# │                                   │
# └───────────────────────────────────┘

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
#


. $HOME/.customrc

