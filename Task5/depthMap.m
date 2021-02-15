frameLeftGray  = rgb2gray(I1Rect);
frameRightGray = rgb2gray(I2Rect);
    
disparityMap = disparitySGM(frameLeftGray, frameRightGray, 'DisparityRange', [-64 64],'UniquenessThreshold', 5);
figure;
imshow(disparityMap, [-64, 64]);
title('Disparity Map');
colormap jet
colorbar