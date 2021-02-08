points1 = [x1, y1];
points2 = [x2, y2];

[tformMan, inlierIdxMan] = estimateGeometricTransform2D(points1, points2, 'affine');

transformedPointsMan = transformPointsForward(tformMan, points1);

[meanErrMan, medianErrMan, varianceMan, skewMan, histMan] = pointsError(transformedPointsMan, points2)

showMatchedFeatures(imread('PNGs/DSC_0017.png'), imread('PNGs/DSC_0019.png'), points1, points2)