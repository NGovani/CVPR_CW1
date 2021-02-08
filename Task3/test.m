im = imread('../PNGs/DSC_0012.png');

[imagePoints,boardSize] = detectCheckerboardPoints(im)

imshow(im)
hold on;
plot(imagePoints(:,1), imagePoints(:,2), "ro")
