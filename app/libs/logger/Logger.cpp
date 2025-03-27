#include "Logger.hpp"
#include "spdlog/sinks/stdout_color_sinks.h"
#include "spdlog/sinks/rotating_file_sink.h"
#include <stdio.h>

std::shared_ptr<spdlog::logger> Logger::logger = nullptr;
std::shared_ptr<spdlog::logger> Logger::file_logger = nullptr;

Logger::Logger(const std::string& loggerName): loggerName_(loggerName)
{
    if (!logger) {
        logger = spdlog::stdout_color_mt(this->loggerName_);
        logger->set_pattern("[%Y-%m-%d %H:%M:%S.%e] [%^%l%$] %v");
        logger->set_level(spdlog::level::info);
    }
}

Logger::~Logger() {
    if (logger) {
        spdlog::drop_all();
    }
}

void Logger::setLogLevel(spdlog::level::level_enum level) {
    if (logger) {
        logger->set_level(level);
    }
}

void Logger::setLogFile(const std::string& filename) {
    auto rotating_sink = std::make_shared<spdlog::sinks::rotating_file_sink_mt>(
        filename, 1024 * 1024 * 5, 3
    );
    file_logger = std::make_shared<spdlog::logger>(this->loggerName_, rotating_sink);
    if (logger) 
    {
        file_logger->set_level(logger->level());
    }
    else
    {
        file_logger->set_level(spdlog::level::info);
    }
}

void Logger::debug(const std::string& message) {
    if (logger) logger->debug(message);
    if (file_logger) file_logger->debug(message);
}

void Logger::info(const std::string& message) {
    if (logger) logger->info(message);
    if (file_logger) file_logger->info(message);
}

void Logger::warn(const std::string& message) {
    if (logger) logger->warn(message);
    if (file_logger) file_logger->warn(message);
}

void Logger::error(const std::string& message) {
    if (logger) logger->error(message);
    if (file_logger) file_logger->error(message);
}

void Logger::fatal(const std::string& message) {
    if (logger) logger->critical(message);
    if (file_logger) file_logger->critical(message);
}