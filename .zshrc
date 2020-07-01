# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/laurosilvacom/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=""

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
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
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colored-man-pages colorize pip python brew osx)

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



# Sets hub to git command
alias git="hub"
alias zshconfig="code ~/.zshrc"

export NVM_DIR="/Users/laurosilvacom/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# This is the default prompt
PS1='$ '

# This load vscode propmt
if [ "$VSC" = "LOL" ]; then
  PS1='\$ '
fi

# This function checks if a prohect has a name
# This creates a new lesson project using the vanilla template
# creates and pushes a new repo to github
# Opens project in VS Code
# runs npm install and npm start
+vanilla(){
  if [ "$1" = "" ]
  then 
    echo Please name your project 😅
    return
  fi
  cd ~/content
  npx degit laurosilvacom/vanilla-template "$1"
  cd "$1"
  git init
  git add .
  git commit -m "✨ inicial commit"
  git create
  git push -u origin master
  npm install
  code . -g src/index.js
  npm start

  echo Done ✨
}


# This function checks if a lesson has a name
# It creates a new branch and pushes changes to github
# It also generates markdown links to github and codesandbox
# this lesson can also be called from inside VS Code via https://github.com/laurosilvacom/vscode-egghead-lesson
+lesson(){
  if [ "$1" = "" ]
  then 
    echo Please name your branch 😅
    return
  fi

  title=$1
  
  slug="$(change "$1")"

  github="https://github.com/laurosilvacom/${PWD##*/}/tree/$slug/"
  codesandbox="https://codesandbox.io/embed/github/laurosilvacom/${PWD##*/}/tree/$slug/"
  echo "\n## $title \n" >> playlist.md
  echo "[$github]($github) \n" >> playlist.md
  echo "[$codesandbox]($codesandbox) \n" >> playlist.md
  

  git checkout -b "$slug"
  git add .
  git commit -m "$(date)" --allow-empty
  git push --set-upstream origin "$slug"

  echo Done ✨
}

+tutorial(){
  if [ "$1" = "" ]
  then 
    echo Please name your tutorial 😅
    return
  fi

  slug="$(change "$1")"

  cd ~/Documents/clients/laurosilvacom/laurosilva.com/tutorials
  mkdir "$slug"
  cd "$slug"
  mkdir images
  touch $slug.mdx
  echo "\n## $slug \n" >> $slug.mdx

  git checkout -b "$slug"
  git add .
  git commit -m "Adding new tutorial: $slug" --allow-empty
  git push --set-upstream origin "$slug"
  
  cd ~/Documents/clients/laurosilvacom/laurosilva.com
  code .
  
  echo Done ✨

}

export PATH="$HOME/.rbenv/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion