# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME=powerlevel10k/powerlevel10k

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh


#vim default editor
export EDITOR='vim'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Vim bindings
bindkey -v
export KEYTIMEOUT=1
bindkey '^r' history-incremental-search-backward

# open vscode at location
code () {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        [[ $1 = /* ]] && F="$1" || F="$PWD/${1#./}"
        open -a "Visual Studio Code" --args "$F"
    fi
}


#aliases
alias learn='source activate learn-env'
alias flatiron='cd /Users/tiebridgwood/Documents/Coding/Flatiron_DSC'
alias jp='jupyter notebook'
alias jpl='jupyter lab'
alias b='bash -l'
alias z="zsh -l"
alias todo="vim ~/WORKFLOW.otl"
alias conf="vim ~/.zshrc"
alias rgr="ranger"
alias vrc="vim ~/.vimrc"
alias ds="source ~/.venvs/ds/bin/activate"
alias web="source ~/.venvs/flask/bin/activate"
alias p="sudo pacman"
alias config='/usr/bin/git --git-dir=/home/tito/.cfg/ --work-tree=/home/tito'
