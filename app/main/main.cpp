#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <Logger.hpp>
#include "app/libs/ws2812/neopixel.h"

Logger logger("main");

int setup()
{
    // Initialize the logger
    logger.setLogLevel(spdlog::level::debug);
    logger.setLogFile("log.txt");

    init_neopixels();

    return 1;
}

void loop()
{
    logger.info("Poke");
    sleep(1);
}


int main(int argc, char* argv[])
{
    if (!setup())
    {
        logger.error("Setup failed");
        return -1;
    }
    while (1)
    {
        loop();
    }
    return 0;
}