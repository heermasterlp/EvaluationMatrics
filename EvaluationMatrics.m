
% img_file = 'matrics.jpg';
% img = imread(img_file);
% 
% qigong_img = img(:, 1: 256);
% kai_img = img(:, 257: 512);
% 
% imwrite(qigong_img, 'qigong.png');
% imwrite(kai_img, 'kai.png');

%figure; imshow(qigong_img);

qigong_path = 'qigong.png';

qigong_img = imread(qigong_path);

% grayscale to binary image
qigong_img = imbinarize(qigong_img);

% figure; imshow(qigong_img);

reqigong_img = ~qigong_img;
% figure; imshow(reqigong_img);

% MAE 
fprintf('---------Reverse color----------------------------\n');
m_mae = MAE(qigong_img, reqigong_img);
fprintf('MAE : %f \n', m_mean);

cr = CoverageRate(qigong_img, reqigong_img);
fprintf('CR: %f \n', cr);


ssimval = ssim(reqigong_img*255, qigong_img*255);
fprintf('SSIM: %f \n', ssimval);

fprintf('---------Same image----------------------------\n');

qigong_img2 = qigong_img;
m_mae = MAE(qigong_img, qigong_img2);
fprintf('MAE : %f \n', m_mean);

cr = CoverageRate(qigong_img, qigong_img2);
fprintf('CR: %f \n', cr);




