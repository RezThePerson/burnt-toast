{ pkgs, zen-browser, ... }:
{
  programs.hyprland.enable = true;

  environment.systemPackages = with pkgs; [
    # Apps
    firefox
    neovim
    prismlauncher
    vscode
    tor
    tor-browser
    zen-browser.packages.${pkgs.system}.default
    kitty
    btop
    fastfetch
    bluetui

    # Dev tools
    git
    nodejs
    starship
    curl
    stow
    zsh
    pay-respects
    nixfmt-rfc-style

    # Utils
    wl-clipboard
    grim
    slurp
    cliphist
    trash-cli

    # misc
    bluez
    wireplumber

    # rice apps
    hyprland
    hyprpicker
    hypridle
    rofi
    ulauncher
    quickshell
    waybar
    swaybg

    # rice others
    bibata-cursors
  ];

  # Fonts
  fonts.packages = with pkgs; [
    nerd-fonts.space-mono
    nerd-fonts.jetbrains-mono
  ];
}
