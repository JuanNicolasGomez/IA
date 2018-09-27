A = imread("foto2'.jpg");
[nreg, ncol, nplanos] = size(A);
for i =1:nreg
	for j=1:ncol
		if A(i,j,2)>100 && A(i,j,2)<180
			A(i,j,2) = 0;
			%A(i,j,3) = 0;
		end
	end
end

imshow(A);