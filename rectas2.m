A = imread("foto3.jpg");
[nreg,ncol,nplanos] = size(A)

mitad = ncol/2;
%m = Pendiente de la Recta
m = (((ncol/2)-1)/(nreg-1));

%Ciclos para recorrer la matriz
for i1 =1:nreg
	for j1=1:ncol
		if (j1 > mitad)
			if (j1 > m*i1 + mitad)
				A(i1, j1, 2) = 0;
				A(i1, j1, 3) = 0;
			else
				A(i1, j1, 1) = 0;
				A(i1, j1, 3) = 0;
			end
		else
			if (j1 > m*i1)
				A(i1, j1, 1) = 0;
				A(i1, j1, 2) = 0;
			end
		end
	end
end
imshow(A);
