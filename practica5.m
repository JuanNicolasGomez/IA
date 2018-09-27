A = imread("foto4.jpeg");
[nreg,ncol,nplanos] = size(A)
mitadVer = floor(ncol/2);
mitadHor= floor(nreg/2);
for i1 =1:nreg
	for j1=1:ncol
		if (i1 <= mitadHor)
			if (j1 > mitadVer)
				A(i1,j1,2) = 0;
				A(i1,j1,3) = 0;
			end
		else
			if (j1 <= mitadVer)
				A(i1,j1,1) = 0;
				A(i1,j1,2) = 0;
			else
				A(i1,j1,1) = 0;
				A(i1,j1,3) = 0;
			end
		end
	end
end

subplot(2,2,1),imshow(A);
A1 = A(1:mitadHor,1:mitadVer, :);
A2 = A(1:mitadHor,mitadVer+2:ncol,:);
A3 = A(mitadHor+1:nreg,1:mitadVer, :);
A4 = A(mitadHor+1:nreg,mitadVer+2:ncol,:);
size(A1)
size(A2)
size(A3)
size(A4)

subplot(2,2,2),imshow([A3 A1 ; A4 A2]);
subplot(2,2,3),imshow([A4 A3 ; A2 A1]);
subplot(2,2,4),imshow([A2 A4 ; A1 A3]);


