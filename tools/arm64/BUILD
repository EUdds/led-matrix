load(":cc_toolchain_config.bzl", "cc_toolchain_config")

package(default_visibility = ["//visibility:public"])

filegroup(
    name = "empty",
    srcs = [],
)

cc_toolchain(
    name = "arm64_toolchain",
    toolchain_identifier = "arm64-toolchain",
    toolchain_config = ":arm64_toolchain_config",
    all_files = ":empty",
    ar_files = ":empty",
    as_files = ":empty",
    compiler_files = ":empty",
    dwp_files = ":empty",
    linker_files = ":empty",
    strip_files = ":empty",
)

cc_toolchain_config(name = "arm64_toolchain_config")

toolchain(
    name = "arm64_toolchain_impl",
    toolchain = ":arm64_toolchain",
    toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
)
