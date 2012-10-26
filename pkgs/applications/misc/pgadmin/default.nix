{ stdenv, fetchurl, postgresql, wxGTK, libxml2, libxslt, openssl }:

stdenv.mkDerivation rec {
  name = "pgadmin3-1.16.0";

  src = fetchurl {
    url = "http://ftp.postgresql.org/pub/pgadmin3/release/v1.16.0/src/${name}.tar.gz";
    sha256 = "1b2iv105cdyjh208ml8f893b9xy9nka6pvb1a9hj1jgr43v6zkgr";
  };

  buildInputs = [ postgresql wxGTK libxml2 libxslt openssl ];

  meta = { 
    description = "PostgreSQL administration GUI tool";
    homepage = http://www.pgadmin.org;
    license = "GPL2";
  };
}
