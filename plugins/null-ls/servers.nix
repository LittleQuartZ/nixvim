{ pkgs, config, lib, inputs, ... }@args:
let
  helpers = import ./helpers.nix args;
  serverData = {
    code_actions = { };
    completion = { };
    diagnostics = {
      flake8 = {
        packages = [ pkgs.python3Packages.flake8 ];
      };
      shellcheck = {
        packages = [ pkgs.shellcheck ];
      };
    };
    formatting = {
      phpcbf = {
        packages = [ pkgs.phpPackages.phpcbf ];
      };
      alejandra = {
        packages = [ pkgs.alejandra ];
      };
      nixfmt = {
        packages = [ pkgs.nixfmt ];
      };
      prettier = {
        packages = [ pkgs.nodePackages.prettier ];
      };
      black = {
        packages = [ pkgs.python3Packages.black ];
      };
      beautysh = {
        packages = [ inputs.beautysh.packages.${pkgs.system}.beautysh-python38 ];
      };
      fourmolu = {
        packages = [ pkgs.haskellPackages.fourmolu ];
      };
    };
  };
  # Format the servers to be an array of attrs like the following example
  # [{
  #   name = "prettier";
  #   sourceType = "formatting";
  #   packages = [...];
  # }]
  serverDataFormatted = lib.mapAttrsToList
    (sourceType: sourceSet:
      lib.mapAttrsToList (name: attrs: attrs // { inherit sourceType name; }) sourceSet
    )
    serverData;
  dataFlattened = lib.flatten serverDataFormatted;
in
{
  imports = lib.lists.map (helpers.mkServer) dataFlattened;
}
