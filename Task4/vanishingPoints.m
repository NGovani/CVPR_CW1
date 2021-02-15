im = imread('../Images/DSC_0046.JPG');
s = size(im);

low_x = -1*s(2);
high_x = 7*s(2);
low_y = -1*s(1);
high_y = 4*s(1);

xFit = low_x:100:high_x;

figure;
imshow(im);
xlim([low_x high_x]);
ylim([low_y high_y]);
hold on;

coeff_h_left = zeros(4, 2);
for i = 1:4
    i_off = i - 1;
    coeff_h_left(i,:) = polyfit(x_left(i_off*5+1:i*5), y_left(i_off*5+1:i*5), 1);
    yFit = polyval(coeff_h_left(i,:), xFit);
    plot(xFit, yFit, 'r-');
end
[h_l_x, h_l_y] = intersection(coeff_h_left);
plot(h_l_x, h_l_y, 'rx', 'LineWidth', 2, 'MarkerSize', 20);

coeff_h_right = zeros(4, 2);
for i = 1:4
    i_off = i - 1;
    coeff_h_right(i,:) = polyfit(x_right(i_off*5+1:i*5), y_right(i_off*5+1:i*5), 1);
    yFit = polyval(coeff_h_right(i,:), xFit);
    plot(xFit, yFit, 'g-');
end
[h_r_x, h_r_y] = intersection(coeff_h_right);
plot(h_r_x, h_r_y, 'gx', 'LineWidth', 2, 'MarkerSize', 20);

% Horizon Line
plot([h_l_x h_r_x]', [h_l_y h_r_y]', 'y-', 'Marker', 'none', 'LineWidth', 2)

coeff_v_left = zeros(5,2);
for i = 1:5
    i_off = i - 1;
    coeff_v_left(i,:) = polyfit(x_left(i:5:20), y_left(i:5:20), 1);
    yFit = polyval(coeff_v_left(i,:), xFit);
    plot(xFit, yFit, 'm-');
end
[v_l_x, v_l_y] = intersection(coeff_v_left);
plot(v_l_x, v_l_y, 'mx', 'LineWidth', 2, 'MarkerSize', 20);

coeff_v_right = zeros(5,2);
for i = 1:5
    i_off = i - 1;
    coeff_v_right(i,:) = polyfit(x_right(i:5:20), y_right(i:5:20), 1);
    yFit = polyval(coeff_v_right(i,:), xFit);
    plot(xFit, yFit, 'b-');
end
[v_r_x, v_r_y] = intersection(coeff_v_right);
plot(v_r_x, v_r_y, 'bx', 'LineWidth', 2, 'MarkerSize', 20);


