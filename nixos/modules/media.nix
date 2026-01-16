{ pkgs, ... }:
{
  # audio
  services.pipewire = {
    enable = true;
  };
  services.dbus.enable = true;

  # bluetooth
  hardware.bluetooth.enable = true;
  services.blueman.enable = true;

  # screen sharing
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland
    ];
  };
}
