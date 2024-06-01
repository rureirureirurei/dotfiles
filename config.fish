# Set PATH, MANPATH, etc., for Homebrew.
set -gx PATH /opt/homebrew/bin $PATH
set -x LANG en_US.UTF-8
set -x LC_ALL en_US.UTF-8

# Aliases
alias cfg="vim ~/.config"
alias f="vim ~/.config/fish/config.fish"
alias a="vim ~/.config/alacritty/config.fish"
alias ctf="cd ~/work/ctf"
alias c="../gradlew installDist"
alias n="vim"
alias jup="jupyter lab"
alias pcp='realpath $argv[1] | pbcopy'
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'

function rmac
  curl -s "https://www.macvendorlookup.com/api/v2/$argv" | jq .[0].company
end

# fuck3
thefuck --alias | source

# Google Cloud SDK.
if [ -f '/Users/denys/google-cloud-sdk/path.fish.inc' ]; . '/Users/denys/google-cloud-sdk/path.fish.inc'; end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/homebrew/Caskroom/miniconda/base/bin/conda
    eval /opt/homebrew/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

