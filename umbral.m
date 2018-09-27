P = imread("foto2.jpg");
[nreg,ncol,nplanos] = size(P)
P = rgb2gray(P);
%imshow(P);
Q = P;
p1 = 95;
for i1 =1:nreg
	for j1=1:ncol
		if P(i1,j1)<= p1;
			Q(i1,j1) = 0;
		else
			
			Q(i1,j1) = 255;
		end
	end
end
imshow(Q);