img1 = imread('PNGs/DSC_0017.png');
grayImg1 = rgb2gray(img1);
img2 = imread('PNGs/DSC_0019.png');
grayImg2 = rgb2gray(img2);

points1 = detectKAZEFeatures(grayImg1);
points2 = detectKAZEFeatures(grayImg2);

[feats1, vpts1] = extractFeatures(grayImg1, points1);
[feats2, vpts2] = extractFeatures(grayImg2, points2);

pairs = matchFeatures(feats1, feats2, "Unique", true, "Method", 'Approximate');
matchedPoints1 = vpts1(pairs(:,1));
matchedPoints2 = vpts2(pairs(:,2));

