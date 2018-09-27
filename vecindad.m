function conv = vecindad(H, x, y)

	A = imread("descarga.jpg");
	A = rgb2gray(A);
	%A = [1 2 3; 4 5 6;7 8 9]
	[nreg,ncol,nplanos] = size(A)
	[lineh, colh] = size(H);
	conv = H(1,1)*A(x-1,y-1) + H(1,2)*A(x-1, y)...
			+ H(1,3)*A(x-1,y+1) + H(2,1)*A(x,y-1)...
			+ H(2,2)*A(x,y) + H(2,3)*A(x,y+1)...
			+ H(3,1)*A(x+1,y-1) + H(3,2)*A(x+1,y)...
			+ H(3,3)*A(x+1,y+1);
	A(x,y) = conv;
	
	imshow(A);
end
