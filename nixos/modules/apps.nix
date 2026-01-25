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
    gimp
    legcord

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
    javaPackages.compiler.temurin-bin.jdk-21
    go

    # Utils
    wl-clipboard
    grim
    slurp
    cliphist
    trash-cli
    ffmpeg
    yt-dlp
    libqalculate
    brightnessctl
    playerctl
    zip
    unzip
    nix-search-cli

    # misc
    bluez
    wireplumber

    # rice apps
    hyprland
    hyprpicker
    hyprlock
    hypridle
    rofi
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
