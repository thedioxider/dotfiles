set -gx EDITOR nvim

# Safe aliases
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

if status is-interactive
    # Commands to run in interactive sessions can go here
    alias cz=chezmoi
end
