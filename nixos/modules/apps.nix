{ pkgs, caelestia-shell, caelestia-cli, zen-browser, ... }:
{
  environment.systemPackages = with pkgs; [
    # WM
    hyprland
    hyprpicker
    hypridle

    # Apps
    firefox
    neovim
    prismlauncher
    vscode
    tor
    tor-browser
    rofi
    foot
    thunar
    stow
    zen-browser.packages.${pkgs.system}.default

    # CLI / utils
    git
    nodejs
    starship
    curl
    gnupg
    pinentry-curses
    nixfmt-rfc-style
    wl-clipboard
    cliphist
    inotify-tools
    app2unit
    trash-cli    
    btop
    fastfetch
    bibata-cursors

    # Theming
    adw-gtk3
    papirus-icon-theme
    libsForQt5.qt5ct
    kdePackages.qt6ct
    jq
    eza
    fish

    # Caelestia
    caelestia-shell.packages.${pkgs.system}.default
    caelestia-cli.packages.${pkgs.system}.default
  ];

  # Fonts
  fonts.packages = with pkgs; [
    nerd-fonts.space-mono
    nerd-fonts.jetbrains-mono
  ];

}
