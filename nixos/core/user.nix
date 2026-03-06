{
  config,
  lib,
  pkgs,
  ...
}:
{
  programs.zsh.enable = true;

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
      "plugdev"
      "disk"
    ];
    shell = pkgs.zsh;
  };
}
