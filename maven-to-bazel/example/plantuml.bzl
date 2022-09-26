def _plantuml_impl(ctx):
    src = ctx.file.src
    filename = src.basename[:-len(src.extension)-1]
    out = ctx.actions.declare_file(filename + ".png")
    ctx.actions.run(
        mnemonic = "plantuml",
        executable = ctx.executable._tool,
        arguments = ["-tpng", "-o", out.dirname, src.path],
        inputs = [ctx.file.src],
        outputs = [out],
    )
    return [
        DefaultInfo(files = depset([out]))
    ]

plantuml = rule(
    implementation = _plantuml_impl,
    attrs = {
        "src": attr.label(
            doc = "Plantuml source file to convert",
            allow_single_file = True,
        ),
        "_tool": attr.label(
            executable = True,
            cfg = "host",
            default = Label("//:plantuml"),
        ),
    },
)

