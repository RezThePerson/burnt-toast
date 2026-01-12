{ pkgs, ... }:
{
  hardware.graphics = {
    enable = true;
    extraPackages = with pkgs; [
      mesa
      intel-media-driver
      intel-vaapi-driver
      vpl-gpu-rt
      libglvnd
      egl-wayland
      xorg.libX11
    ];
  };
}
