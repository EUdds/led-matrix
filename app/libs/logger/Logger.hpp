#pragma once
#include <string>
#include <memory>
#include "spdlog/spdlog.h"

class Logger {
public:
    Logger(const std::string& loggerName);
    ~Logger();

    void setLogLevel(spdlog::level::level_enum level);
    void setLogFile(const std::string& filename);
    void debug(const std::string& message);
    void info(const std::string& message);
    void warn(const std::string& message);
    void error(const std::string& message);
    void fatal(const std::string& message);

private:
    static std::shared_ptr<spdlog::logger> logger;
    static std::shared_ptr<spdlog::logger> file_logger;
    const std::string loggerName_;
};