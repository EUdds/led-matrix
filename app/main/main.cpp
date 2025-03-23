#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <Logger.hpp>


int main(int argc, char* argv[])
{
    Logger logger;

    logger.setLogLevel(spdlog::level::debug);
    logger.setLogFile("log.txt");
    logger.info("This is an info message.");
    logger.warn("This is a warning message.");
    logger.error("This is an error message.");
    logger.fatal("This is a fatal message.");
    logger.debug("This is a debug message.");
    return 0;
}