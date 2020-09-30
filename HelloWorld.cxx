#include "itkImage.h"
#include <itkImageFileReader.h>
#include "itkImageFileWriter.h"
#include <itkRecursiveGaussianImageFilter.h>
#include <iostream>
int main()
{   
    //Exercice 1
    // float sigma = 1;

    // // Creer une image 2D avec un type de pixel unsigned char
    // typedef itk::Image< unsigned char, 2 > ImageType;
    // ImageType::Pointer image = ImageType::New();
    // ImageType::Pointer imageFilt = ImageType::New();

    // typedef itk::ImageFileReader< ImageType > ReaderType;
    // ReaderType::Pointer reader = ReaderType::New();
    // reader->SetFileName( "../data/lena.jpg" );
    // reader->Update();
    // image = reader->GetOutput();


    //Read the [10,10] pixel
    // ImageType::IndexType index;
    // index[0] = 10;
    // index[1] = 10;

    // std::cout <<  (float) image->GetPixel(index) << std::endl;

    //Exercice 4
    // typedef itk::RecursiveGaussianImageFilter< ImageType> FilterType;
    // FilterType::Pointer GaussFilt = FilterType::New();
    // GaussFilt->SetInput(image);
    // GaussFilt->SetSigma(sigma);
    // GaussFilt->Update();

    // imageFilt = GaussFilt->GetOutput();
    
    //Exercice 5

    //TODO lire Image Moving, image Fix


    typedef itk::ImageRegistrationMethod<ImageType,ImageType> RegistrationType;
    registration->SetOptimizer(optimizer);
    registration->SetTransform(transform);
    registration->SetInterpolator( interpolator );
    registration->SetMetric( metric );
    registration->SetFixedImage( fixedImageReader->GetOutput() );
    registration->SetMovingImage( movingImage );
    registration->SetFixedImageRegion(
    fixedImageReader->GetOutput()->GetBufferedRegion() );

    typedef RegistrationType::ParametersType ParametersType;
    ParametersType initialParameters( transform->GetNumberOfParameters() );
    initialParameters[0] = 0.0;
    initialParameters[1] = 0.0;
    // Initial offset in mm along X
    // Initial offset in mm along Y
    registration->SetInitialTransformParameters( initialParameters );
    try
    {
        registration->StartRegistration();
    }
        catch( itk::ExceptionObject & err )
    {
        std::cout << "ExceptionObject caught !" << std::endl;
        std::cout << err << std::endl;
        return -1;
    }

    //Exercice 3
    // typedef itk::ImageFileWriter<ImageType> WriterType ;
    // WriterType::Pointer writer = WriterType::New();
    // writer->SetFileName("new_image.jpg");
    // writer->SetInput(imageFilt);
    // writer->Update();


    return 0;
}