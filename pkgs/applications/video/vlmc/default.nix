{ stdenv, fetchgit, cmake }:

stdenv.mkDerivation rec {
  name = "vlmc-${version}";
  version = "git20121019";

  src = fetchgit {
    url = "git://git.videolan.org/vlmc.git";
    rev = "1206fe5ccd0e9098da8df43fe9da733deeb48187";
    sha256 = "7002654ccbc807d7fabd5951546f14c50983199f63b8f3d01307583763bbf48d";
  };

  buildInputs = [ cmake ];

  if stdenv.isDarwin then
    preBuild = ''
      cd contribs
      /bin/sh contribs-mac.sh
      mkdir build
      cd build
      cmake ..
      make
    '';

  enableParallelBuilding = true;

  meta = {
    description = "VideoLAN Movie Creator";
    homepage = http://www.videolan.org/vlmc/;
  };
}
