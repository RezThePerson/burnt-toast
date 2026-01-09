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
  services.openssh.permitRootLogin = "yes";
  services.openssh.passwordAuthentication = true;

  powerManagement.enable = true;
  services.upower.enable = true;
}
