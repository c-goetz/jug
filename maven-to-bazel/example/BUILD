load("@rules_java//java:defs.bzl", "java_binary", "java_import")
load("plantuml.bzl", "plantuml")

java_binary(
    name = "plantuml",
    main_class = "net.sourceforge.plantuml.Run",
    runtime_deps = [
        "@plantuml//jar",
    ],
)

plantuml(
    name = "phases",
    src = "phases.puml",
)

