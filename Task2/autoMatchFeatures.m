img1 = imread('../Images/DSC_0072.JPG');
grayImg1 = rgb2gray(img1);
img2 = imread('../Images/DSC_0073.JPG');
grayImg2 = rgb2gray(img2);

points1 = detectORBFeatures(grayImg1);
points2 = detectORBFeatures(grayImg2);

[feats1, vpts1] = extractFeatures(grayImg1, points1);
[feats2, vpts2] = extractFeatures(grayImg2, points2);

pairs = matchFeatures(feats1, feats2, "Unique", true, "Method", 'Approximate');
matchedPoints1 = vpts1(pairs(:,1));
matchedPoints2 = vpts2(pairs(:,2));

showMatchedFeatures(img1, img2, matchedPoints1.Location, matchedPoints2.Location)