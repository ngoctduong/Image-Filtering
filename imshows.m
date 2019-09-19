function imshows(rows, cols, varargin)
    n=size(varargin,2);
    for i=1:n
        subplot(rows, cols, i);
        imshow(varargin{i});
    end
 end

