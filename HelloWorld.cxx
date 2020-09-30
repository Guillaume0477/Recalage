#include "itkImage.h"
#include <itkImageFileReader.h> 
#include <itkRecursiveGaussianImageFilter.h>
#include <iostream>
int main()
{
    float sigma = 15;

    // Creer une image 3D avec un type de pixel unsigned short
    typedef itk::Image< unsigned short, 2 > ImageType;
    ImageType::Pointer image = ImageType::New();
    ImageType::Pointer imageFilt = ImageType::New();

    typedef itk::ImageFileReader< ImageType > ReaderType;
    ReaderType::Pointer reader = ReaderType::New();
    reader->SetFileName( "../data/lena.jpg" );
    reader->Update();
    image = reader->GetOutput();


    //Read the [10,10] pixel
    // ImageType::IndexType index;
    // index[0] = 10;
    // index[1] = 10;

    // std::cout <<  (float) image->GetPixel(index) << std::endl;

    typedef itk::RecursiveGaussianImageFilter< ImageType> FilterType;
    FilterType::Pointer GaussFilt = FilterType::New();
    GaussFilt->SetInput(image);
    GaussFilt->SetSigma(sigma);
    GaussFilt->Update();

    imageFilt = GaussFilt->GetOutput();
    


    return 0;
}