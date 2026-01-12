{
  config,
  lib,
  pkgs,
  ...
}:
{
  users.users.rez = {
    isNormalUser = true;
    description = "Rez";
    initialPassword = "idk!";
    extraGroups = [
      "wheel"
      "networkmanager"
      "video"
      "input"
      "tty"
      "audio"
    ];
    shell = pkgs.zsh;
  };
}
