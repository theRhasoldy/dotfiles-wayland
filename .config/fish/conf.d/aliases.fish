#ls --> exa
alias ls "exa --icons --group-directories-first"
alias lsa "ls -a"
alias ll "ls -l@ --git --time accessed --no-permissions"
alias lla "ll -a"
alias llt "lla -T"

# ...
alias ... "../.."
alias .... "../../.."
alias ..... "../../../.."
alias ...... "../../../../.."

# Convenient copy/remove/move
alias rm "rm -vI"
alias cp "rsync -ahv --info progress2"
alias mv "mv -vi"

# Nvim
alias vim "nvim"
alias vi "nvim"
alias nano "nvim" # Nano can suck deez nuts

alias rg "rg --sort path"

# Legacy
alias cat "bat"

# Git
alias g "git"
alias gs "git status"
alias ga "git add"
alias gc "git commit -m && gitleaks detect"
alias gcz "git cz && gitleaks detect"
alias gpl "git pull"
alias gps "gitleaks detect && git push"

# Dotfiles
alias dot "/usr/bin/git --git-dir $HOME/.config/dotfiles.git/ --work-tree $HOME"
alias dots "dot status --untracked-files no"
alias dota "dot add"
alias dotc "dot commit -m"
alias dotps "dot push"

# Clean Pacman
alias pacclean "sudo paru -Rns (paru -Qtdq)"

# ex = EXtractor for all kinds of archives
# usage: ex <file>
function ex
    if test -f $argv[1]
        switch $argv[1]
            case *.tar.bz2
                tar xjf $argv[1]
            case *.tar.gz
                tar xzf $argv[1]
            case *.bz2
                bunzip2 $argv[1]
            case *.rar
                unrar x $argv[1]
            case *.gz
                gunzip $argv[1]
            case *.tar
                tar xf $argv[1]
            case *.tbz2
                tar xjf $argv[1]
            case *.tgz
                tar xzf $argv[1]
            case *.zip
                unzip $argv[1]
            case *.Z
                uncompress $argv[1]
            case *.7z
                7z x $argv[1]
            case *.deb
                ar x $argv[1]
            case *.tar.xz
                tar xf $argv[1]
            case *.tar.zst
                tar xf $argv[1]
            case '*'
                echo "'$argv[1]' cannot be extracted via ex()"
        end
    else
        echo "'$argv[1]' is not a valid file"
    end
end
