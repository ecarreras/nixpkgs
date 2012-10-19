{ stdenv, fetchgit, intltool, pkgconfig, gtk, xfce4devtools,
  autoconf, gtk_doc, automake }:

stdenv.mkDerivation rec {
  name = "squeeze-git20120829";
  
  src = fetchgit {
    url = "git://git.xfce.org/apps/squeeze";
    rev = "a6beeed2117055482af6c5feebefb0a4a30bb475";
    sha256 = "d4bd9e98c6f1b60645f4818da0100544835665c86f2d29346a866c3ad5a883f1";
  };

  buildInputs = [ intltool pkgconfig gtk xfce4devtools autoconf gtk gtk_doc automake];

  preConfigure = ''
    ./autogen.sh
  '';

  meta = {
    homepage = http://squeeze.xfce.org/;
    description = "Squeeze is a modern and advanced archive manager for the Xfce.";
    platforms = stdenv.lib.platforms.linux;
  };
}
