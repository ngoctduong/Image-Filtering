function fourier2d(img, fe)
    
    [M, N]=size(img);
    
    cx=(0:N-1)-floor(N/2);
    cy=(0:M-1)-floor(M/2);
    
    [X, Y]=meshgrid(fe*cx/N, fe*cy/N);
    
    img=double(img);
    Z=abs(fft2(img-mean(img(:))));
    Z=fftshift(Z);
    
    subplot(131);
    imshow(img, []);
    title('Image');
    
    
    subplot(132);
    mesh(X,Y,Z)
    axis ij
    title('Module de la transformée de Fourier 2D');
    xlabel('Fx (Hz)');
    ylabel('Fy (Hz)');
    
    subplot(133);
    contourf(X, Y, log(1+5*Z));
    axis ij;
    axis equal;
    title('Module de la transformée de Fourier 2d (vue de dessus)');
    xlabel('Fx (Hz)');
    ylabel('Fy (Hz)');
end

