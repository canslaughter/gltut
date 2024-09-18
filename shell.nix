{ pkgs ? import <nixpkgs> { } }:
pkgs.llvmPackages.stdenv.mkDerivation {
  name = "gltut_0.4.0";
  nativeBuildInputs = with pkgs;[ cmake pkg-config autoconf autoreconfHook ];
  buildInputs = with pkgs;[
    libtool
    libGL
    xorg.libX11
    xorg.libXi
    libGLU
  ];
}
