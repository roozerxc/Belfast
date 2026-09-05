{ config, pkgs, ... }:

{
  programs.gamemode.enable = true;
  programs.zsh.enable = true;

  services.xserver.xkb = {
    layout = "us,il";
    variant = ",";
    options = "grp:alt_shift_toggle";
  };
}
