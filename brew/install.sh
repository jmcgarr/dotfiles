#!/bin/sh
if ! test $(which brew); then
  echo "  Installing Homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
  # TODO this doesn't work and not sure why...yet. This tap isn't added during bootstrap.sh
  brew tap AdoptOpenJDK/openjdk
  brew tap caskroom/versions
  brew tap homebrew/versions
fi
