function gain2d(h)

    h=h/sum(abs(h(:)));
    
    M=128;
    N=128;

    img=zeros(128, 128);
    img(1:size(h, 1), 1:size(h, 2)) = h;

    cx=(0:N-1)-floor(N/2);
    cy=(0:M-1)-floor(M/2);
    
    fe=1;
    [X, Y]=meshgrid(fe*cx/N, fe*cy/N);
    
    img=double(img);
    Z=abs(fft2(img-mean(img(:))));
    Z=fftshift(Z);
    
    subplot(121);
    mesh(X,Y,Z)
    axis ij
    title('Gain 2D');
    xlabel('Fx (Hz)');
    ylabel('Fy (Hz)');
    
    subplot(122);
    contourf(X, Y, Z);
    axis ij;
    axis equal;
    title('Gain 2D (vue de dessus)');
    xlabel('Fx (Hz)');
    ylabel('Fy (Hz)');