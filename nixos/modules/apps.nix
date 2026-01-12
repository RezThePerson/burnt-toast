{ pkgs, zen-browser, ... }:
{
  programs.xwayland.enable = true;
  programs.hyprland.enable = true;

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
    stow
    zen-browser.packages.${pkgs.system}.default
    kitty
    zsh
    oh-my-zsh
    pay-respects

    # CLI / utils
    git
    nodejs
    starship
    curl
    nixfmt-rfc-style
    wl-clipboard
    grim
    slurp
    cliphist
    trash-cli    
    btop
    fastfetch
    bibata-cursors
    quickshell
    waybar
  ];

  # Fonts
  fonts.packages = with pkgs; [
    nerd-fonts.space-mono
    nerd-fonts.jetbrains-mono
  ];

}
