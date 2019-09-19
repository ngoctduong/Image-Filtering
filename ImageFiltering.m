

s = log(abs(fft2(cercle)));
sb = log(abs(fft2(cercleb)));
 
% h1 = 1/9* ones(3);
% h2 = 1/81* ones(9);
% % imshow(cercle./max(cercle(:)));

% img_f1= filter2(h1,cercle);
% img_f2= filter2(h2,cercle);
% imshow(s./max(s(:)));

% imshow(img_f1/max(img_f1(:)));
% imshow(img_f2/max(img_f2(:)));

% figure, bar(cercle(70,:));
% figure, bar(img_f1(70,:));
% figure, bar(img_f2(70,:));

% figure,gain2d(h1);
% figure,gain2d(h2);
% figure, imshow(cercleb./max(cercleb(:)));
% figure, imshow(sb./max(sb(:)));

% img_f1b= filter2(h1,cercleb);
% img_f2b= filter2(h2,cercleb);
% figure, imshow(img_f1b/max(img_f1b(:)));
% figure, imshow(img_f2b/max(img_f2b(:)));

% imshow(cercleb2./max(cercleb2(:)));

% img_f = medfilt2(cercleb2);
% img_f1b2= filter2(h1,cercleb2);
% 
% figure, imshow(img_f/max(img_f(:)));
% figure, imshow(img_f1b2/max(img_f1b2(:)));

% img_f1 = medfilt2(cercleb);
% figure, imshow(img_f1/max(img_f1(:)));


h1 = [1,0,-1;2,0,-2;1,0,-1]
% h1 = [2,1,0;1,0,-1;0,-1,-2]
h2 = [-1,-2,-1;0,0,0;1,2,1]
% figure, gain2d(h1);
% figure, gain2d(h2);

% img_f1= filter2(h1,cercle);
% img_f2= filter2(h2,cercle);
% img_f1=img_f1-min(img_f1(:));
% img_f2=img_f2-min(img_f2(:));
% figure, imshow(img_f1/max(img_f1(:)));
% figure, imshow(img_f2/max(img_f2(:)));

% img_f1b= filter2(h1,cercleb);
% img_f2b= filter2(h2,cercleb);
% img_f1b=img_f1b-min(img_f1b(:));
% img_f2b=img_f2b-min(img_f2b(:));
% figure, imshow(img_f1b/max(img_f1b(:)));
% figure, imshow(img_f2b/max(img_f2b(:)));

img_f1b= filter2(h1,bateau);
img_f2b= filter2(h2,bateau);
img_f1b=img_f1b-min(img_f1b(:));
img_f2b=img_f2b-min(img_f2b(:));
figure, imshow(img_f1b/max(img_f1b(:)));
% figure, imshow(img_f2b/max(img_f2b(:)));














