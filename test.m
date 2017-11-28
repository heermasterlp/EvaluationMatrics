clc;
q_file = 'qigong.png';
k_file = 'kai.png';

qigong_img = imread(q_file);
kai_img = imread(k_file);

ssimval = ssim(qigong_img, qigong_img);

disp(ssimval);