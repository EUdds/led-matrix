genrule(
    name = "deploy_to_rpi",
    srcs = ["//app/main:main", ":ssh_key"],
    outs = ["deploy_script.sh"],
    cmd = """
    echo "Deploying to Raspberry Pi..."
    scp -i $(location :ssh_key) $(location //app/main:main) eric@192.168.1.124:~
    echo "Deployment complete."
    """
)

filegroup(
    name = "ssh_key",
    srcs = ["deploy_rsa"],
    visibility = ["//visibility:private"],
)