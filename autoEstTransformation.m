[tform1, inlierIdx] = estimateGeometricTransform2D(matchedPoints1, matchedPoints2, 'affine');
Ir = imwarp(img1, tform1);
figure 
imshow(Ir); 
title('Translated Image');
figure 
imshow(Ir2); 
title('Translated Image');

