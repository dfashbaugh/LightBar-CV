#include <iostream>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

using namespace std;
using namespace cv;

#define CAMERA_OUTPUT_WINDOW_NAME "camera-output"
#define OUTPUT_WINDOW_SCALAR 0.2
//#define RUN_VIDEO

Mat findRed (Mat myImage)
{
    medianBlur(myImage, myImage, 31);
    cvtColor(myImage,myImage,CV_BGR2HSV);
    inRange(myImage,Scalar(0,0,240),Scalar(255,255,255),myImage); 

    return myImage;
}

Mat findGreen (Mat myImage)
{
    medianBlur(myImage, myImage, 31);
    cvtColor(myImage,myImage,CV_BGR2HSV);
    inRange(myImage,Scalar(36,90,183),Scalar(169,255,255),myImage); 

    return myImage;
}

int runVideo()
{
    CvCapture *camCapture;
    int ret = 0;

    if (!(camCapture = cvCaptureFromCAM(CV_CAP_ANY))) {
        cout << "Failed to capture from camera" << endl; 

        ret = 1;

        goto exitCameraOpenFailed;
    }

    cout << "Camera opened successfully" << endl;
    namedWindow( "Video", WINDOW_AUTOSIZE);

    IplImage *cameraFrame;
    int grabFrameRet;

    while (true) {

        if ((cameraFrame = cvQueryFrame(camCapture))) {
            Mat myImage = cv::cvarrToMat(cameraFrame);

            // Process Image
            //medianBlur(myImage, myImage, 11);
            //threshold(myImage, myImage, 160, 255, THRESH_BINARY);
            cvtColor(myImage,myImage,CV_BGR2HSV);
            inRange(myImage,Scalar(130,60,90),Scalar(255,255,255),myImage); 
            
            // Display Image
            imshow("Video", myImage);
        }

        if (cvWaitKey(60) != -1) {
            cout << "Input" << endl;
            break;
        }
    }

    cout << "Done" << endl;

    cvReleaseCapture(&camCapture); 
    cvDestroyWindow(CAMERA_OUTPUT_WINDOW_NAME);
exitCameraOpenFailed:
    return ret;
}

int runSingleImage()
{
    // Read in image and set scale
    Mat myImage = imread("barGreen.jpg");
    double displayScale = OUTPUT_WINDOW_SCALAR;

    // Display UnProcessed Image
    namedWindow("Unprocessed Image", WINDOW_NORMAL);
    Mat dispImage;
    Size size(myImage.size().width * displayScale, myImage.size().height * displayScale);
    resize(myImage, dispImage, size);
    imshow("Unprocessed Image", dispImage);

    // Process Image
    //medianBlur(myImage, myImage, 17);
    //threshold(myImage, myImage, 160, 255, THRESH_BINARY);
    
    myImage = findGreen(myImage);

    // Display Processed Image
    namedWindow("Processed Image", WINDOW_NORMAL);
    resize(myImage, dispImage, size);
    imshow("Processed Image", dispImage);

    waitKey();

    return 0;
}

int main(int argc, char **argv)
{
#ifdef RUN_VIDEO
    return runVideo();
#else
    return runSingleImage();
#endif 
}
