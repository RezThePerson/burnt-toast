{ pkgs, zen-browser, ... }:
{
  programs.hyprland.enable = true;

  environment.systemPackages = with pkgs; [
    # Apps
    firefox
    chromium
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
    pulsemixer
    yazi
    eza

    # Dev tools
    git
    nodejs
    starship
    curl
    stow
    zsh
    pay-respects
    nixfmt-rfc-style
    python3

    # Utils
    wl-clipboard
    grim
    slurp
    cliphist
    trash-cli
    ffmpeg
    yt-dlp
    libqalculate

    # misc
    bluez
    wireplumber

    # rice apps
    hyprland
    hyprpicker
    hypridle
    rofi
    quickshell
    waybar
    swaybg
    libnotify
    dunst

    # rice others
    bibata-cursors
  ];

  # Fonts
  fonts.packages = with pkgs; [
    nerd-fonts.space-mono
    nerd-fonts.jetbrains-mono
  ];
}
