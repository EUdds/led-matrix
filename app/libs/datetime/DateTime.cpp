#include "DateTime.hpp"

DateTime::DateTime(int year, int month, int day, int hour, int minute, int second):
    year(year),
    month(month),
    day(day),
    hour(hour),
    minute(minute),
    second(second)
{
}

void DateTime::print()
{
    printf("%04d-%02d-%02d %02d:%02d:%02d\n", year, month, day, hour, minute, second);
}

DateTime DateTime::now()
{
    time_t t = time(nullptr);
    struct tm* tm = localtime(&t);
    return DateTime(tm->tm_year + 1900, tm->tm_mon + 1, tm->tm_mday,
                    tm->tm_hour, tm->tm_min, tm->tm_sec);
}
