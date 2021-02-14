frameLeftGray  = rgb2gray(I1Rect);
frameRightGray = rgb2gray(I2Rect);
    
disparityMap = disparitySGM(frameLeftGray, frameRightGray, 'DisparityRange', [0 12],'UniquenessThreshold', 3);
figure;
imshow(disparityMap, [0, 128]);
title('Disparity Map');
colormap jet
colorbar