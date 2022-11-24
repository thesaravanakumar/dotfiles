#exports
export EDITOR="nano"

alias \
    cp="cp -iv" \
    mv="mv -iv" \
    rm="rm -v" \
    ll="ls -lhH" \
    la="ls -lahH" \
    ducks="du -cksh * | sort -hr | head -n 15" \
    mkd="mkdir -pv" \
    cd='pushd' \
    back='popd' \
    flip='pushd_builtin' \
    reload="source ~/.zshrc" \
    wtr="curl wttr.in" \
    srch="sudo find / -print 2>/dev/null|grep" \
    compress="tar -Jcvf" \
    extract="tar -xvf" \
    pubssh="pbcopy < ~/.ssh/id_rsa.pub | echo '=> Public key copied to clipboard.'" \
    mypubip="dig +short myip.opendns.com @resolver1.opendns.com" \
    myprivip="ipconfig getifaddr en0" \
    stat='stat -f "%Sp %OLp %N"' \ #mac syntax
    removemacfiles="find . -iname '._*' -exec rm -rf {} \;" \
    top='htop' \
    cat='ccat' \
    nano='/opt/homebrew/bin/nano' \
    history='history -i' \

#shorten & nav
alias \
    ka="killall" \
    g="git" \
    v="$EDITOR" \
    ..="cd .." \
    ...="cd ../.." \
    ....="cd ../../.." \
    ~="cd ~" \
    home="cd $HOME" \

#functions
docker(){
    if[[ $@ == "ps"]];then
        docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}\t{{.Image}}"
    else
        command docker $@
    fi
}

pushd(){
    if [[ $# -eq 0 ]]; then
        DIR="${HOME}"
    else
        DIR="$1"
    fi
    builtin pushd "${DIR}" > /dev/null
    echo -n "DIRSTACK"
    dirs
}

pushd_builtin(){
    builtin pushd > /dev/null
    echo -n "DIRSTACK"
    dirs
}

popd(){
    builtin popd > /dev/null
    echo -n "DIRSTACK"
    dirs
}

replace(){
    rename "s/${1}/${2}/g" *
}