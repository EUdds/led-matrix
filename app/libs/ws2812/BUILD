cc_library(
    name = "ws2812",
    srcs = ["ws2812.c"],
    hdrs = ["ws2812.pio.h"],  # Header file for ws2812.
    deps = [
        "//app/libs/piolib:piolib",  # Dependency on the piolib library.
    ],
    visibility = ["//visibility:public"],  # Make the library visible to other packages.
)

cc_library(
    name = "neopixel",
    srcs = ["neopixel.cpp"],
    hdrs = ["neopixel.h"],  # Header file for neopixel.
    deps = [
        "//app/libs/ws2812:ws2812",  # Dependency on the ws2812 library.
    ],
    visibility = ["//visibility:public"],  # Make the library visible to other packages.
)