{
    description = "Belfast Flake";

    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
        nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=latest";
    };

    outputs = { nixpkgs, nix-flatpak, ... }

    @inputs: {
        nixosConfigurations = {
            belfast = nixpkgs.lib.nixosSystem {
                modules = [
                    ./configuration.nix
                    nix-flatpak.nixosModules.nix-flatpak
                ];
                specialArgs = { inherit inputs; };
            };
        };
    };
}
