#pragma once
#include <string>
#include <memory>
#include "spdlog/spdlog.h"

class Logger {
public:
    Logger();
    ~Logger();

    static void setLogLevel(spdlog::level::level_enum level);
    static void setLogFile(const std::string& filename);
    
    static void debug(const std::string& message);
    static void info(const std::string& message);
    static void warn(const std::string& message);
    static void error(const std::string& message);
    static void fatal(const std::string& message);

private:
    static std::shared_ptr<spdlog::logger> logger;
    static std::shared_ptr<spdlog::logger> file_logger;
};