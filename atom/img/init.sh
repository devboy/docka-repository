stow --ignore=\.viminfo -d ~/.docka/homes -t ~ -S $(find ~/.docka/homes -maxdepth 1 -type d -not -path ~/.docka/homes -exec basename {} \;)
