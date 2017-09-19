function pearson = PearsonValue(vec1, vec2)
  
  #Los vectores deben ser del mismo tamanho
  N1 = length(vec1);
  if N1 == length(vec2)
    
      # Calculo de la media de ambos vectores
      esperanzaV1 = sum(vec1) / length(vec1);
      esperanzaV2 = sum(vec2) / length(vec2);
      
      # Calculo de la covarianza
      sumCov = @(v1, v2) (v1 - esperanzaV1) .* (v2 - esperanzaV2);
      covarianza = sum(sumCov(vec1(:), vec2(:))) / (N1 - 1);
      
      # Calculo de las varianzas 
      varianza = @(x, esperanzaX) ((x - esperanzaX) .^ 2);
      varV1 = sum(varianza(vec1(:), esperanzaV1)) / (N1 - 1);
      varV2 = sum(varianza(vec2(:), esperanzaV2)) / (N1 - 1);
      
      # Desviacion Estandar
      desV1 = sqrt(varV1);
      desV2 = sqrt(varV2);
      
      # Vector de coeficientes de Pearson 
      pearson = covarianza / (desV1 .* desV2);
      
   else
      "Ambos vectores deben ser del mismo tamanho"
   endif
  
endfunction


#v = [31   30   27   75]
#r = [30   60   40   80]
#f = [41   26   28    2]

#PearsonValue(v, f)