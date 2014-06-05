# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH

# Vagrant
alias vl="VBoxManage list runningvms"
alias vu="vagrant up"
alias vd="vagrant suspend"
alias vr="vagrant reload"
alias vs="vagrant ssh"
alias vp="vagrant provision"

# Git
alias gs="git status"
alias gp="git push"
alias gl="git pull"

# Navigate to...
alias cdP="cd ~/Documents/Projects"
alias hos="subl /etc/hosts"



# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file