def _impl(ctx):
    toolchain = ctx.toolchain

    return cc_common.create_cc_toolchain_config_info(
        ctx = ctx,
        toolchain_identifier = "arm64-toolchain",
        host_system_name = "local",
        target_system_name = "arm64",
        target_cpu = "arm64",
        target_libc = "glibc",
        compiler = "gcc",
        abi_version = "local",
        abi_libc_version = "local",
        toolchain_config = cc_common.create_gcc_toolchain_config_info(
            ctx = ctx,
            cpu = "arm64",
            compiler = "gcc",
            toolchain_identifier = "arm64-toolchain",
            tool_paths = [
                # Customize with your actual toolchain paths
                ("gcc", "/usr/bin/aarch64-linux-gnu-gcc"),
                ("ld", "/usr/bin/aarch64-linux-gnu-ld"),
                ("ar", "/usr/bin/aarch64-linux-gnu-ar"),
                ("cpp", "/usr/bin/aarch64-linux-gnu-cpp"),
                ("nm", "/usr/bin/aarch64-linux-gnu-nm"),
                ("objdump", "/usr/bin/aarch64-linux-gnu-objdump"),
                ("strip", "/usr/bin/aarch64-linux-gnu-strip"),
            ],
        ),
    )

arm64_toolchain_config = rule(
    implementation = _impl,
    attrs = {},
    provides = [CcToolchainConfigInfo],
)
