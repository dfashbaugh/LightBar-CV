#include <iostream>
#include <vector>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/features2d.hpp>

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
    //inRange(myImage,Scalar(36,00,0),Scalar(169,255,255),myImage); 
    bitwise_not(myImage, myImage);
    //cvtColor(myImage, myImage, CV_HSV2BGR);
    //cvtColor(myImage, myImage, CV_BGR2GRAY);



    //findContours(myImage, myImage, CV_RETR_EXTERNAL, CV_RETR_EXTERNAL);

    // Test BLOB Code
    
    SimpleBlobDetector::Params params;
    params.minThreshold = 10;
    params.maxThreshold = 1000;
    params.filterByArea = false;
    params.filterByCircularity = false;
    params.filterByConvexity = false;
    params.filterByInertia = false;

    //Mat hsv_channels[3];
    //split( myImage, hsv_channels );

    // Set up the detector with default parameters.
    //SimpleBlobDetector detector;
    cv::Ptr<SimpleBlobDetector> detector = cv::SimpleBlobDetector::create(params);

    //SURF surf;

    // Detect blobs.
    std::vector<KeyPoint> keypoints;
    detector->detect( myImage/*hsv_channels[2]*/, keypoints);

    printf("Keypoints Found %lu... OpenCV Version %d\n", keypoints.size(), CV_MAJOR_VERSION);
  
    // Draw detected blobs as red circles.
    // DrawMatchesFlags::DRAW_RICH_KEYPOINTS flag ensures the size of the circle corresponds to the size of blob
    Mat im_with_keypoints;
    drawKeypoints( myImage, keypoints, im_with_keypoints, Scalar(0,0,255), DrawMatchesFlags::DRAW_RICH_KEYPOINTS );
    
    /*
    for(int i = 0; i<keypoints.size(); i++)
    {
        printf("Key Point Size = %0.2f.. Location X = %0.2f.. Location Y = %0.2f\n", keypoints[i].size, keypoints[i].pt.x, keypoints[i].pt.y);
    }
    */
    return im_with_keypoints;
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
            //cvtColor(myImage,myImage,CV_BGR2HSV);
            //inRange(myImage,Scalar(130,60,90),Scalar(255,255,255),myImage); 
            myImage = findGreen(myImage);
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
