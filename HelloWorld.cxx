#include "itkImage.h"
#include <iostream>
int main()
{
    // Creer une image 3D avec un type de pixel unsigned short
    typedef itk::Image< unsigned short, 3 > ImageType;
    ImageType::Pointer image = ImageType::New();
    std::cout << "ITK Hello World !" << std::endl;
    return 0;
}