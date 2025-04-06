#include <string>
#include <vector>
#include <iostream>
class Image
{
    public:
    Image();
    void resize(int width, int height);
    void load(const std::string& path);
    void save(const std::string& path);

    private:
    int width;
    int height;
    std::vector<unsigned char> data;
    std::string format;
    std::string filename;
    std::string extension;
}