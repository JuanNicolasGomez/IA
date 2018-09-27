A = imread("foto3.jpg");
[nreg,ncol,nplanos] = size(A)
F = rgb2gray(A);
F = double(F);
%vector con la cantidad de veces que se repite un valor en la matriz
valores = zeros(256,1);
subplot(2,2,1),imshow(F,[]);

for i = 0:255
	valores(i+1) = sum(F(:)==i);
end
subplot(2,2,3),stem(valores);

MAX = 255;
MIN = 0;
fmax = max(F);
fmin = min(F);

G = floor(((F - fmin)./(fmax - fmin)).*(MAX - MIN)) + MIN;
subplot(2,2,2),imshow(G, []);
for i = 0:255
	valores(i+1) = sum(G(:)==i);
end
subplot(2,2,4),stem(valores);
