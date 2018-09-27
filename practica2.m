A = imread("foto3.jpg");
[nreg,ncol,nplanos] = size(A)
B = rgb2gray(A);
%vector con la cantidad de veces que se repite un valor en la matriz
valores = zeros(256,1);
imshow(B);

for i = 0:255
	valores(i+1) = sum(B(:)==i);
end
%stem(valores);
%imshow(A);