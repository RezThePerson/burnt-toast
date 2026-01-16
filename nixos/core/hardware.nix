{ pkgs, ... }:
{
  hardware.graphics = {
    enable = true;
    extraPackages = with pkgs; [
      mesa
    ];
  };

  hardware.opentabletdriver.enable = true;
}
