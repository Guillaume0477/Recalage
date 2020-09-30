#include "itkImage.h"
#include <itkImageFileReader.h>
#include "itkImageFileWriter.h"
#include <itkRecursiveGaussianImageFilter.h>
#include <iostream>
int main()
{
    float sigma = 1;

    // Creer une image 2D avec un type de pixel unsigned char
    typedef itk::Image< unsigned char, 2 > ImageType;
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
    



    typedef itk::ImageFileWriter<ImageType> WriterType ;

    WriterType::Pointer writer = WriterType::New();
    writer->SetFileName("new_image.jpg");
    writer->SetInput(imageFilt);
    writer->Update();

    return 0;
}