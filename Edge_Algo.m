% EDGE Algorithm

clc
clear all;
imgGray=imread("image1.bmp");
figure
imshow(imgGray);

image=imread("image3.bmp");
figure
imshow(image);
title("Image Fruits")

image2=edge(imgGray, "canny");
figure
imshow(image2);
title("CANNY");

image3=edge(imgGray, "canny", [ ], 1);
figure
imshow(image3);
title("CANNY 1");

image4=edge(imgGray, "canny", [ ], 4);
figure
imshow(image4);
title("CANNY 4");

image5=edge(imgGray, "prewitt", "horizontal");
figure
imshow(image5);
title("PREWITT");

image6=edge(imgGray, "sobel", "vertical");
figure
imshow(image6);
title("SOBEL");

image7=edge(imgGray, "roberts");
figure
imshow(image7);
title("ROBERTS");

image8=edge(image, "log");
figure
imshow(image8);
title("LoG (Laplacian of Gaussian Image")

% HOUGH TRANSFORM
image=imread("gantrycrane.png");
figure
imshow(image);
title("Gantrycrane Image");

sobelImg=edge(image, "sobel");
figure
imshow(sobelImg);
title("Sobel Image");

houghImg=hough(image, "RhoResolution", 0.5,"Theta", -90:0.5:89 );
figure
imshow(houghImg);
