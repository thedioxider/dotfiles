set -gx EDITOR nvim

# Safe aliases
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

if status is-interactive
    alias plz=sudo

    # Commands to run in interactive sessions can go here
    alias cz=chezmoi
    # file manager
    alias fm=yazi
    # trash manager
    alias ew=trash put
end
