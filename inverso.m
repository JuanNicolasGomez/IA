A = imread("foto2.jpg");
[nreg,ncol,nplanos] = size(A)
B = 255 - A;

imshow(B);
