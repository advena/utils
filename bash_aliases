# call cd and after that list the catalog content
function cd() {
    new_directory="$*";
    if [ $# -eq 0 ]; then 
         new_directory=${HOME};
    fi;
    builtin cd "${new_directory}" && ls -a
}

function cpd() {
    if [ ! -d "$2" ]; then
        sudo mkdir -p "$2"
    fi
    sudo cp -R "$1" "$2"
}

alias c='clear'

# creates catalog with parent if they need to
alias mkdir='mkdir -pv'

#disk readable 
alias df='df -H'
alias du='du -ch'

# dir move
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

#tar files
#create
alias tarc="tar czvf"
#extract
alias tarx="tar xzvf"
#list
alias tart="tar tzvf"

#search for file in entire disk
alias findf='sudo find / -type f -name $1 2>/dev/null'
#search for dir in entire disk
alias findd='sudo find / -type d -name $1 2>/dev/null'

alias install='sudo apt-get install $1'
alias remove='sudo apt-get remove $1'
alias autoremove='sudo apt-get autoremove'
alias update='sudo apt-get update'

alias mci="mvn clean install -DskipITs"
alias mst="mvn clean install -DskipTests"

alias apps="cd ~/apps"

alias burp="/opt/burp/burp.sh"

#git aliases
alias gs="git status"
alias gf="git fetch --all"
alias gri="git rebase --i $1"
alias ga="git add ."
alias gcm='git commit -m $1'
alias gpr="git pull --rebase"
alias gp="git push origin HEAD"
alias gcb="git branch --merged master | grep -v '^ *master$' | xargs git branch -d"

#ansible
alias tags="ansible-playbook ~/apps/ansible/deployment/site.yml --list-tags"
