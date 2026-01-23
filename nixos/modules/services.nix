{ pkgs, ... }:
{
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.tuigreet}/bin/tuigreet --time -g --greeting --cmd start-hyprland";
        user = "greeter";
      };
    };
  };

  virtualisation.docker.enable = true;

  services.cloudflare-warp.enable = true;

  services.openssh.enable = true;
  services.openssh.settings.PermitRootLogin = "yes";
  services.openssh.settings.PasswordAuthentication = true;

  powerManagement.enable = true;
  services.upower.enable = true;
}
