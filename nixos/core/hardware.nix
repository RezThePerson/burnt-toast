{pkgs, ...}:
{
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    extraPackages = with pkgs; [
      mesa
      libGL
      vulkan-loader
      vulkan-validation-layers
    ];
  };

  services.xserver.enable = true;
}
