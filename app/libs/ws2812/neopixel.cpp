#include "neopixel.h"

#include "pico/stdlib.h"
#include "hardware/pio.h"
#include "hardware/clocks.h"
#include "ws2812.pio.h" // Include the generated PIO program header

#include <stdint.h>

PIO pio;
int sm;

static inline void put_pixel(uint32_t pixel_grb) {
    // Send a pixel to the PIO state machine
    pio_sm_put_blocking(pio, sm, pixel_grb << 8u);
}

static inline uint32_t urgb_u32(uint8_t r, uint8_t g, uint8_t b) {
    // Convert RGB to GRB format for WS2812
    return
            ((uint32_t) (r) << 8) |
            ((uint32_t) (g) << 16) |
            (uint32_t) (b);
}

void init_neopixels()
{
    uint offset;
    uint gpio;

    stdio_init_all(); // Initialize stdio, required for PIO

    pio = pio0;
    sm = pio_claim_unused_sm(pio, true); // Claim a state machine for WS2812
    offset = pio_add_program(pio, &ws2812_program); // Load the WS2812 PIO program

    gpio = 2;

    ws2812_program_init(pio, sm, offset, gpio, 800000, true);

    put_pixel(urgb_u32(0xff, 0, 0));

}