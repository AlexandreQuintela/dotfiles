alias e="$TEXT_EDITOR"
alias ls="ls -laF"
alias myip="curl whatismyip.akamai.com"
alias j="java"
alias mostraOcutos='defaults write com.apple.finder AppleShowAllFiles TRUE killall Finder' 
alias escondeOcutos='defaults write com.apple.finder AppleShowAllFiles FALSE killall Finder'

function remove_whitespaces {
  find * -type f \( -name '*.rb' -o -name '*.js' -o -name "*.erb" -o -name "*.haml" \) -print -exec perl -pi -e 's/[\t ]+$//g' {} \;
}

function killruby {
  pgrep '^ruby*' | xargs kill -9
}

function mac {
  echo `openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//'`
}

function change_mac {
  sudo ifconfig en0 ether `mac`
}
