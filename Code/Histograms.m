function Histograms(mat, labels)
  
  k = 1;
  n = rows(mat);
  
  for i = 1:n
    subplot (2,2,k);
    hist (mat(i,:), 10, "facecolor", "b", "edgecolor", "w");
    xlabel("Cantidad");
    xlabel(cellstr(labels)(i, 1));
    k = k + 1;
  endfor
  
endfunction