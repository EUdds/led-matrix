cc_library(
    name = "piolib",
    srcs = ["piolib.c", "pio_rp1.c"],
    hdrs = glob(["include/**/*.h"]),
    includes = ["include"],  # This will add the include path for the headers.
    copts = [
        "-ffunction-sections",  # Optimize for size by using function sections.
    ],
    visibility = ["//visibility:public"],  # Make the library visible to other packages.
)