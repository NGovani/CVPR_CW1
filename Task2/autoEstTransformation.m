[tformAuto, inlierIdxAuto] = estimateGeometricTransform2D(matchedPoints1, matchedPoints2, 'affine')

usedPoints1 = matchedPoints1(inlierIdxAuto);
usedPoints2 = matchedPoints2(inlierIdxAuto);

transformedPointsAuto = transformPointsForward(tformAuto, matchedPoints1.Location);
transformedPointsAutoUsed = transformPointsForward(tformAuto, usedPoints1.Location);

[meanErrAuto, medianErrAuto, varianceAuto, skewAuto, histAuto] = pointsError(transformedPointsAuto, matchedPoints2.Location)
[meanErrAutoUsed, medianErrAutoUsed, varianceAutoUsed, skewAutoUsed, histAutoUsed] = pointsError(transformedPointsAutoUsed, usedPoints2.Location)

showMatchedFeatures(imread('PNGs/DSC_0017.png'), imread('PNGs/DSC_0019.png'), matchedPoints1.Location, matchedPoints2.Location)
showMatchedFeatures(imread('PNGs/DSC_0017.png'), imread('PNGs/DSC_0019.png'), usedPoints1.Location, usedPoints2.Location)