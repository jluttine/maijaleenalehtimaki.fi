with (import <nixpkgs> {});
let
  env = bundlerEnv {
    name = "maijaleenalehtimaki";
    inherit ruby;
    gemfile = ./Gemfile;
    lockfile = ./Gemfile.lock;
    gemset = ./gemset.nix;
  };
in stdenv.mkDerivation {
  name = "maijaleenalehtimaki";
  buildInputs = [env ruby];
}
