
ll() {
  ls -lAFbhv --color=always $1 | less -FR
}

pcp() {
  realpath $1 | pbcopy
}

alias gentmp='date "+tmp-%Y%m%d%H%M%S"'
alias genpwd='LC_ALL=C tr -cd "3-9A-HJ-NP-Z" </dev/urandom | head --bytes=32 | pbcopy'
alias n='nvim'
