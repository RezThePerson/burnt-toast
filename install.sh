echo "you must be using nix os to use this rice"

cd ~
git clone https://github.com/RezThePerson/burnt-toast.git
nixos-generate-config --show-hardware-config > ./burnt-toast/nixos/host/hardware-configuration.nix
cd burnt-toast/dotfiles
stow -t ~/ *
sudo nixos-rebuild switch --flake ~/burnt-toast/nixos#nixos
cd ~
