_ToolchainMapping = provider(
    doc = "Mapping of toolchain definition files to platform constraints",
    fields = {
        "file": "Toolchain definition file",
        "exec_compatible_with": "Compatible execution platform constraints",
        "target_compatible_with": "Compatible target platform constraints",
    },
)

TOOLCHAIN_MAPPINGS = [
    _ToolchainMapping(
        exec_compatible_with = [
            "@bazel_tools//platforms:linux",
            "@bazel_tools//platforms:aarch64",
        ],
        file = "@rules_foreign_cc//tools/build_defs/shell_toolchain/toolchains/impl:linux_commands.bzl",
    ),
    _ToolchainMapping(
        exec_compatible_with = [
            "@bazel_tools//platforms:windows",
            "@bazel_tools//platforms:x86_64",
        ],
        file = "@rules_foreign_cc//tools/build_defs/shell_toolchain/toolchains/impl:windows_commands.bzl",
    ),
    _ToolchainMapping(
        exec_compatible_with = [
            "@bazel_tools//platforms:osx",
            "@bazel_tools//platforms:x86_64",
        ],
        file = "@rules_foreign_cc//tools/build_defs/shell_toolchain/toolchains/impl:osx_commands.bzl",
    ),
]
