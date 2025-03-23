load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")


def rpi_bazel_repository(name):
    commit = "5d31ed20396ba9e91117aff4a3c3c612fecee201"
    http_archive(
        name = name,
        url = "https://github.com/mjbots/rpi_bazel/archive/{}.zip".format(commit),
        strip_prefix = "rpi_bazel-{}".format(commit),
    )
