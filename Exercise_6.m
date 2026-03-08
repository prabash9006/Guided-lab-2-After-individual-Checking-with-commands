% Exercise 6 - SVD image compression for Grace Hopper image

% Read the image
rgbGH = imread('GraceHopper.jpg');

% Show original color image
figure();
image(rgbGH);
axis image;
title('Original Color Image');

% Convert to grayscale
bwGH = rgb2gray(rgbGH);
imGH = double(bwGH);

% Show grayscale image
figure();
colormap(gray(256));
image(imGH);
daspect([1 1 1]);
title('Original Grayscale Image');

% Compute singular value decomposition
[U,S,V] = svd(imGH);

% Plot singular values
figure();
semilogy(diag(S));
xlabel('n');
ylabel('Singular Values');
title('Singular Values of the Image');

% Choose numbers of singular values
Nsvals = [200, 100, 50, 25, 10];

% Reconstruct compressed grayscale images
for jj = 1:length(Nsvals)
    ns = Nsvals(jj);
    
    imNs = U(:,1:ns) * S(1:ns,1:ns) * V(:,1:ns)';
    
    figure();
    colormap(gray(256));
    image(imNs);
    daspect([1 1 1]);
    title([num2str(ns) ' singular values']);
end