{ buildDunePackage
, kafka
, lwt
, cmdliner
}:

buildDunePackage {
  pname = "kafka_lwt";

  inherit (kafka) version src;

  buildInputs = [ cmdliner ];

  propagatedBuildInputs = [ kafka lwt ];

  meta = kafka.meta // {
    description = "OCaml bindings for Kafka, Lwt bindings";
  };
}
