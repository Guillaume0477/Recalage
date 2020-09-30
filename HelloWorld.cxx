#include "itkImage.h"
#include <itkImageFileReader.h>
#include "itkImageFileWriter.h"
#include <itkRecursiveGaussianImageFilter.h>
#include <itkTranslationTransform.h>
#include <itkMeanSquaresImageToImageMetric.h>
#include <itkLinearInterpolateImageFunction.h>
#include <itkRegularStepGradientDescentOptimizer.h>
#include <itkImageRegistrationMethod.h>
#include <itkResampleImageFilter.h>

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
    typedef itk::Image< unsigned char, 2 > ImageType;
    ImageType::Pointer fixedImage = ImageType::New();
    ImageType::Pointer movingImage = ImageType::New();

    typedef itk::ImageFileReader< ImageType > ReaderType;
    ReaderType::Pointer reader1 = ReaderType::New();
    //BrainProtonDensitySliceShifted13x17y.png
    reader1->SetFileName( "../data/BrainProtonDensitySliceBorder20.png" );
    reader1->Update();
    fixedImage = reader1->GetOutput();

    ReaderType::Pointer reader2 = ReaderType::New();
    reader2->SetFileName( "../data/BrainProtonDensitySliceShifted13x17y.png" );
    reader2->Update();
    movingImage = reader2->GetOutput(); 
    
    typedef itk::RegularStepGradientDescentOptimizer optimizerType;
    optimizerType::Pointer optimizer = optimizerType::New();
    typedef itk::TranslationTransform<double, 2> transformType;
    transformType::Pointer transform = transformType::New();
    typedef itk::MeanSquaresImageToImageMetric<ImageType,ImageType> metricType;
    metricType::Pointer metric = metricType::New();
    typedef itk::LinearInterpolateImageFunction<ImageType, double> interpolatorType;
    interpolatorType::Pointer interpolator = interpolatorType::New();
    typedef itk::ResampleImageFilter<ImageType, ImageType> ResampleFilterType;

    typedef itk::ImageRegistrationMethod<ImageType,ImageType> RegistrationType;
    RegistrationType::Pointer registration = RegistrationType::New();
    registration->SetOptimizer(optimizer);
    registration->SetTransform(transform);
    registration->SetInterpolator( interpolator );
    registration->SetMetric( metric );
    registration->SetFixedImage( fixedImage);
    registration->SetMovingImage( movingImage );
    registration->SetFixedImageRegion(fixedImage->GetBufferedRegion() );

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

    ParametersType finalParameters = registration->GetLastTransformParameters();
    std::cout << finalParameters << std::endl;
    transformType::Pointer finalTransform = transformType::New();
    finalTransform->SetParameters( finalParameters );
    ResampleFilterType::Pointer resample = ResampleFilterType::New();
    resample->SetTransform( finalTransform );
    resample->SetInput( movingImage );
    resample->SetSize( fixedImage->GetLargestPossibleRegion().GetSize() );
    resample->SetOutputOrigin( fixedImage->GetOrigin() );
    resample->SetOutputSpacing( fixedImage->GetSpacing() );
    resample->SetDefaultPixelValue( 0 );
    resample->Update();

    //Exercice 3
    typedef itk::ImageFileWriter<ImageType> WriterType ;
    WriterType::Pointer writer1 = WriterType::New();
    writer1->SetFileName("new_image_1.jpg");
    writer1->SetInput(resample->GetOutput());
    writer1->Update();

    // WriterType::Pointer writer2 = WriterType::New();
    // writer2->SetFileName("new_image_2.jpg");
    // writer2->SetInput(movingImage);
    // writer2->Update();



    return 0;
}