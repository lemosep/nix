{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "nixpkgs/release-23.11"; 
  };

  outputs = { self, nixpkgs }: {
    nixosConfigurations = {
      hubert = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        modules = [
          ./configuration.nix
        ];
      };
    };
  };
}
