let
  # See https://nixos.wiki/wiki/FAQ/Pinning_Nixpkgs for more information on pinning
  nixpkgs = builtins.fetchTarball {
    # Descriptive name to make the store path easier to identify
    name = "nixpkgs-unstable-2021-01-13";

    # Commit hash for nixos-unstable as of 2021-01-13
    url = https://github.com/NixOS/nixpkgs/archive/21.11.tar.gz;

    # Hash obtained using `nix-prefetch-url --unpack <url>`
    sha256 = "162dywda2dvfj1248afxc45kcrg83appjd0nmdb541hl7rnncf02";
  };
in
{ pkgs ? import nixpkgs {} }:

with pkgs;

mkShell {
  buildInputs = [
    asciidoctor
    curl
    go
    hugo
    gnumake
    jq
  ];
}
