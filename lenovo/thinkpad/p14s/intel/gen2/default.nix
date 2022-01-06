{
  imports = [
    ../../../common/cpu/intel
    # might need nvidia module but we don't know the PCI ids:
    # https://github.com/NixOS/nixos-hardware/pull/274#discussion_r650483740
    #../../../common/gpu/nvidia.nix
    ../../../common/pc/laptop/acpi_call.nix
    ../../../common/pc/laptop/ssd
  ];

  boot.kernelParams = [ "acpi_backlight=native" ];

  # Emulate mouse wheel on trackpoint
  # hardware.trackpoint.emulateWheel = true;

  services.fprintd.enable = true;
  services.thinkfan.enable = true;
}