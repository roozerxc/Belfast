{ config, pkgs, inputs, ... }:

{
    imports = [
        ./hardware-configuration.nix
        ./modules/packages.nix
        ./modules/programs.nix
        ./modules/services.nix
        ./modules/virtualization.nix
        ./modules/plasma.nix
    ];

    networking.networkmanager.enable = true;
    system.stateVersion = "26.05";
}
