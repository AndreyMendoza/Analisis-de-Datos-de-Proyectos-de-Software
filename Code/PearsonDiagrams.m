function PearsonDiagrams(mat1, mat2, lab1, lab2)
  
  k = 1;
  n = rows(mat1);
  m = rows(mat2);
  
  for i = 1:n
    for j = 1:m
      subplot (n,m,k);
      colors = mat1(i, :) .* mat2(j, :);
      scatter (mat1(i, :), mat2(j, :), 50, colors, "filled");
      ylabel(cellstr(lab1)(i, 1));
      xlabel(cellstr(lab2)(j, 1));
      k = k + 1;
    endfor
  endfor
  
endfunction