export PATH=$HOME/.cargo/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions)
# plugins=(zsh-syntax-highlighting)


source $ZSH/oh-my-zsh.sh

 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='lvim'
 fi
bindkey "^H" backward-delete-word
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
alias ping='ping -c 4'
alias gping='ping 8.8.8.8'
alias vim='lvim'
alias nano=lvim
alias nanon=lvim
alias naon=lvim
alias nao=lvim
alias vi=lvim
alias ed=lvim
alias emacs=lvim
alias cargo='cargo mommy'
alias ls='exa'
alias cat='bat'
alias memdump='genact -m memdump'
export PROMPT='%F{111}%m:%F{2}%~ $%f '
alias display=geeqie
alias create-repo='gh repo create --private "$(basename $(pwd))"'
alias create-pub-repo='gh repo create --public "$(basename $(pwd))"'
alias add-remote='git remote add origin "https://github.com/Ciubix8513/$(basename $(pwd))"'
