{ lib, buildDunePackage, cppo, ocamlbuild }:

if lib.versionOlder (lib.getVersion cppo) "1.6"
then cppo
else

buildDunePackage {
  pname = "cppo_ocamlbuild";

  inherit (cppo) version src;

  propagatedBuildInputs = [ ocamlbuild ];

  meta = cppo.meta // {
    description = "Plugin to use cppo with ocamlbuild";
  };
}
