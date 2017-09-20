function retMat = PearsonMat(mat1, mat2)
  
  retMat = zeros(rows(mat1), rows(mat2));
  
  for i = 1:rows(mat1)
    for j = 1:rows(mat2)
      retMat(i,j) = PearsonValue(mat1(i, :), mat2(j, :));
    endfor
  endfor
  
endfunction