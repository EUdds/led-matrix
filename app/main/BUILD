cc_binary(
    name="main",
    srcs = ["main.cpp"],
    deps = [
        "//app/libs/logger:logger",
    ],
    visibility = ["//visibility:public"],
)

platform(
    name = "arm64_platform",
    constraint_values = [
        "//platforms:arm64",
    ],
)