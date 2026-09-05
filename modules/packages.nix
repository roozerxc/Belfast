{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        # CLI & Utils
        fastfetch
        nano
        curl
        wget
        git

        # Data & Partitioning
        gparted
        ddrescue
        smartmontools

        # Internet & Browser
        librewolf

        # Audio Libraries
        openal-soft
    ];

    # This is dependent on if proprietary/unfree packages can
    # be allowed or disallowed for the nixOS installation. The
    # user can always change this setting to their preferences.

    nixpkgs.config.allowUnfree = true;
}
