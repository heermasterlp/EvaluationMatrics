img_path = 'qigong.png';

img = imread(img_path);

[L, nm] = bwlabel(~img, 8);
stats = regionprops(L,'BoundingBox');

imshow(img);
hold on;

for i = 1: nm
    rt = stats(i).BoundingBox;
    showrt(rt, 'g');
end

