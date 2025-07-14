# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias reloadshell="source $HOME/.zshrc"
alias storm='open -a /Applications/WebStorm.app'
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"
alias pls="sudo"
alias kp="npx kill-port"
eval $(thefuck --alias)
alias auth="okta-artifactory-login"

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias splunk="$SPLUNK_HOME/bin/splunk"
export SPLUNK_WORK="$HOME/work/splunk"
alias sui="cd $SPLUNK_WORK/splunk-ui"
alias a11y="cd $SPLUNK_WORK/a11y"
alias udf="cd $SPLUNK_WORK/dashboard-framework"
alias viz="cd $SPLUNK_WORK/vision"

# JS
alias sq1="rm -rf node_modules && npm i"
alias nrd="npm run dev"
alias nsu='nvm use && yarn install && yarn setup'

# Git
alias gst="git status"
alias gb="git branch"
alias gc="git checkout"
alias gl="git log --oneline --decorate --color"
alias amend="git add . && git commit --amend --no-edit"
alias commit="git add . && git commit -m"
alias diff="git diff"
alias force="git push --force"
alias nuke="git clean -df && git reset --hard"
alias pop="git stash pop"
alias pull="git pull"
alias push="git push"
alias resolve="git add . && git commit --no-edit"
alias stash="git stash -u"
alias unstage="git restore --staged ."
alias wip="commit wip"
