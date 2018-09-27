A = imread("foto1.jpg");
[nreg,ncol,nplanos] = size(A)

%m = Pendiente de la Recta
m = ((ncol-1)/(nreg-1));

%Ciclos para recorrer la matriz
for i1 =1:nreg
	for j1=1:ncol
		
		%Cuando la columna es mayor al valor
		%de la fila multiplicado por la pendiente
		%de la recta se elimina el color verde 
		%de esa zona.
		if (j1 > m*i1)
			A(i1, j1, 2) = 0;
		else
		%La otra parte de la imagen se le elimina 
		%el colo azul.
			A(i1, j1, 3) = 0;
		end
	end
end
imshow(A);
