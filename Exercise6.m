rgbGH = imread('GraceHopper.jpg');
figure();
image(rgbGH), axis image;

bwGH = rgb2gray(rgbGH);
imGH = double(bwGH);

figure();
colormap(gray(256));
image(imGH);
daspect([1 1 1]);

d)

[U,S,V] = svd(imGH);

e)
plot(diag(S));

f)
imNs = U(:,1:ns) * S(1:ns,1:ns) * V(:,1:ns)';

Nsvals = [200, 100, 50, 25, 10];

for jj = 1:length(Nsvals)
    ns = Nsvals(jj);
    imNs = U(:,1:ns) * S(1:ns,1:ns) * V(:,1:ns)';
end

g)
figure();
colormap(gray(256));
image(imNs);
daspect([1 1 1]);
title([num2str(ns) ' singular values']);


