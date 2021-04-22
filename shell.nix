let
  # See https://nixos.wiki/wiki/FAQ/Pinning_Nixpkgs for more information on pinning
  nixpkgs = builtins.fetchTarball {
    # Descriptive name to make the store path easier to identify
    name = "nixpkgs-unstable-2021-01-13";

    # Commit hash for nixos-unstable as of 2021-01-13
    url = https://github.com/NixOS/nixpkgs/archive/1cf298791b255bee486b3068e3758273751d4993.tar.gz;

    # Hash obtained using `nix-prefetch-url --unpack <url>`
    sha256 = "0bgdm7ff28j7p5z8wrg2m7174h58rh8iq4jwkgdmjcc4a2j6nw8a";
  };
in
{ pkgs ? import <nixpkgs> {} }:

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
