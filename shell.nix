let
  ql2nix = import (builtins.fetchTarball {
    url = "https://github.com/SquircleSpace/ql2nix/archive/39cbd136b656c31717248b8527a55aeff5404cb6.tar.gz" ;
    sha256 = "1vrxqy7qgb2ms07cmchwz35368vbpip63l72xdpdx7aq8vxh8qiq";
  }) { inherit pkgs; };
  pkgs = import <nixpkgs> { };
in with pkgs;
  mkShell {
    nativeBuildInputs = [
      sbcl
      lispPackages.
      quicklisp
      lispPackages.quicklisp-to-nix
      ql2nix.ql2nix
    ];

    buildInputs = [ sbcl ];
  }
