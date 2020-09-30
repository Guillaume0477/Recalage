#include "itkImage.h"
#include <itkImageFileReader.h> 
#include <iostream>
int main()
{
    // Creer une image 3D avec un type de pixel unsigned short
    typedef itk::Image< unsigned short, 2 > ImageType;
    ImageType::Pointer image = ImageType::New();

    typedef itk::ImageFileReader< ImageType > ReaderType;
    ReaderType::Pointer reader = ReaderType::New();
    reader->SetFileName( "../data/lena.jpg" );
    reader->Update();
    image = reader->GetOutput();

    ImageType::IndexType index;
    index[0] = 10;
    index[1] = 10;

    std::cout <<  (float) image->GetPixel(index) << std::endl;

    return 0;
}