worldPoints = generateCheckerboardPoints([5 6], 24);

imagePoints = zeros(20, 2, 18);

imagePoints(:,:,1) = [ x_34 y_34 ];
imagePoints(:,:,2) = [ x_35 y_35 ];
imagePoints(:,:,3) = [ x_36 y_36 ];
imagePoints(:,:,4) = [ x_37 y_37 ];
imagePoints(:,:,5) = [ x_38 y_38 ];
imagePoints(:,:,6) = [ x_39 y_39 ];
imagePoints(:,:,7) = [ x_40 y_40 ];
imagePoints(:,:,8) = [ x_41 y_41 ];
imagePoints(:,:,9) = [ x_42 y_42 ];
imagePoints(:,:,10) = [ x_43 y_43 ];
imagePoints(:,:,11) = [ x_44 y_44 ];
imagePoints(:,:,12) = [ x_45 y_45 ];
imagePoints(:,:,13) = [ x_46 y_46 ];
imagePoints(:,:,14) = [ x_47 y_47 ];
imagePoints(:,:,15) = [ x_48 y_48 ];
imagePoints(:,:,16) = [ x_49 y_49 ];
imagePoints(:,:,17) = [ x_50 y_50 ];
imagePoints(:,:,18) = [ x_51 y_51 ];

[cameraParams, imagesUsed, estimationErrors] = estimateCameraParameters(imagePoints, worldPoints);