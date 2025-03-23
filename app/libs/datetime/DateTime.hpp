#include <ctime>
#include <cstdio>


class DateTime
{
    public:
        DateTime(int year, int month, int day, int hour, int minute, int second);
        void print();
    
        static DateTime now();

    private:
        int year;
        int month;
        int day;
        int hour;
        int minute;
        int second;
};