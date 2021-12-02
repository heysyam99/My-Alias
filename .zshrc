# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/web-search/web_search.plugin.zsh

export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/usr/local/opt/elasticsearch@6/bin:$PATH"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/mongodb-community@4.4/bin:$PATH"
export PATH="$HOME/Qt5.5.0/5.5/clang_64/bin:$PATH"
export PATH="$HOME/development/flutter/bin:$PATH"
export warnflags=-Wno-error=implicit-function-declaration
export GOPATH="$HOME/go"
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export GOOSE_DRIVER=postgres
export GOOSE_DBSTRING="user=postgres dbname=postgres sslmode=disable"
export ADMIN_TOOL_DEV="true"
# Aliases
alias projects="cd ~/projects"
alias brewi="arch -x86_64 brew install"
alias open_="micro ~/.zshrc"
alias fave="cd ~/projects/kfit-app"
alias arshion="cd ~/projects/arshion"
alias fr="flutter run --no-sound-null-safety"
alias fs="foreman start"
alias rs="rails s"
alias rc="rails c"
alias rcs="rc --sandbox"
alias bi="bundle i"
alias bec="bundle exec guard"
alias gi="gem i"
alias dbm="rake db:migrate RAILS_ENV=development"
alias dbs="rake db:migrate:status"
alias dbr="rake db:rollback"
alias s1="STEP=1"
alias c="clear"
alias rm="rm -rf"
alias rel!="source ~/.zshrc"
alias g="git"
alias gcl="git clone"
alias gst="git status"
alias gpf="git push -f origin"
alias gres="git reset --hard"
alias gf="git fetch"
alias gpl="git pull"
alias gc="git checkout"
alias gcm="gsm"
alias gr="git rebase"
alias grc="git rebase --continue"
alias gra="git rebase --abort"
alias gcp="git cherry-pick"
alias gcpc="git cherry-pick --continue"
alias gcpa="git cherry-pick --abort"
alias gpub="git push -u origin"
alias gb="git branch"
alias gs="git stash"
alias gsl="git stash list"
alias gsa="git stash apply"
alias gsd="git stash drop"
alias gbr="git branch -D"
alias gbro="git push -d origin"
alias gref="git reflog"
alias gsearch="git branch --all | grep "
alias dc="docker-compose"
alias dcu="docker-compose up -d"
alias dcl="docker-compose logs -f"
alias mc="mailcatcher"
alias up="git pull && bundle check || bi && dbm"
ulimit -n 20000
ulimit -u 1000

function gsm () {  # Switch to main or master branch
  git branch --list | grep ' master$'
  if   [[ $? -eq 0 ]]; then git checkout  master
  elif [[ $? -ne 0 ]]; then git branch --list | grep ' main$'
    if [[ $? -eq 0 ]]; then git checkout main; fi
  else  # neither exists
    git switch -c main
  fi
}
