echo "you must be using nix os to use this rice"

cd ~
git clone https://github.com/RezThePerson/burnt-toast.git
cd burnt-toast/dotfiles
stow -t ~/ *
sudo nixos-rebuild switch --flake ~/Burnt-Toast/nixos#nixos
cd ~