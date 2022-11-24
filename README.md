### Some of my dotfiles
zshrc
```
echo "Working on personal network!"
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh
[ -f .aliases.zsh ] && source .aliases.zsh
[ -f .work.zsh ] && source .work.zsh
```

vimrc
```
syntax on
set tabstop=4
set shiftwidth=4
set textwidth=120
set softtabstop=4
set autoindent
set backsapce=indent,eol,start
set ai
set number
set hlsearch
set ruler
set showcmd
highlight Comment ctermfg=green
```

nanorc
```
set tabsize 4
set tabstospaces
set autoindent
set trimblanks
set linenumbers
set constantshow
set titlecolor white,red
set keycolor cyan
set functioncolor cyan
set numbercolor yellow
set mouse
include /opt/homebrew/share/nanorc/*.nanorc
```

gitconfig
```
[pull]
    rebase = false
[user]
    name = Saravana Kumar
    email = saravana.k.manimaran@gmail.com
[filter]
    clean = git-lfs clean -- %f
    smudge = git-lfs smudge -- %f
    process = git-lfs filter-process
    required = true
```