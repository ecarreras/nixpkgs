{ stdenv, fetchurl }:

stdenv.mkDerivation rec {
  name = "xfce4-dev-tools-4.8.0";
  
  src = fetchurl {
    url = "http://archive.xfce.org/src/xfce/xfce4-dev-tools/4.8/${name}.tar.bz2";
    sha256 = "05a837jayfx1jikkf2dgvfjs60nfhg256p4flhhv3743vklmf53s";
  };

  buildInputs = [ ];

  meta = {
    homepage = "http://www.xfce.org";
    description = "XFCE Developer Tools";
    platforms = stdenv.lib.platforms.linux;
  };
} 
