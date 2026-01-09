{ pkgs, ... }:
{
  # audio
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
  };
  services.dbus.enable = true;

  # bluetooth
  hardware.bluetooth.enable = true;
  services.blueman.enable = true;
  environment.systemPackages = with pkgs; [ 
    wireplumber
    bluez
    bluetui
  ];

  # screen sharing
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland
      xdg-desktop-portal-gtk
    ];
  };
}
