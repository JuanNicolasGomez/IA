A = imread("foto1.jpg");
[nreg,ncol,nplanos] = size(A)
mitad = ncol/2;
m = (((ncol/2)-1)/(nreg-1));

for i1 =1:nreg
	for j1=1:ncol
		%Area por arriba de la onda (es decir parte derecha de la imagen)
		if (j1 > mitad*sin(2*pi*(2/nreg)*i1 + (3*pi/2) ) + mitad)
			%Primer cuarto de onda
			if(i1 < nreg/4)
			%Cambio de color a Verde
				A(i1, j1, 1) = 0;
				A(i1, j1, 3) = 0;
			end
			if (i1 > nreg/4 && i1<nreg/2)
				%Cambio de color a Azul
				A(i1, j1, 1) = 0;
				A(i1, j1, 2) = 0;
			end
			if (i1 >= nreg/2 && i1<3*nreg/4)
				%Cambio de color a Azul
				A(i1, j1, 1) = 0;
				A(i1, j1, 2) = 0;
			end
			if(i1 > 3*nreg/4)
				%Cambio de color a Verde
				A(i1, j1, 1) = 0;
				A(i1, j1, 3) = 0;
			end
		%Area por debajo de la onda (parte izquierda de la imagen)
		else
			%Cambio de color a Rojo
			if (i1 > nreg/2 && 3*nreg/4)
				A(i1, j1, 2) = 0;
				A(i1, j1, 3) = 0;
			end
			if(i1 > 3*nreg/4)
			%Cambio de color a Rojo
				A(i1, j1, 2) = 0;
				A(i1, j1, 3) = 0;
			end
		end
	end
end
imshow(A);