load Datos

# Matriz de tiempos 4x50
T = [tReqs; tDisenio; tAuditoriaDis; tAuditoriaImp];
LT = ["tReqs"; "tDisenio"; "tAuditoriaDis"; "tAuditoriaImp"];

# Matriz de complejidad 3x50
C = [numFuncs; numCiclomatico; numLineas];
LC = ["numFuncs"; "numCiclomatico"; "numLineas"];

# Matriz de fallas 4x50
F = [numFallasTriviales; numFallasMenores; numFallasMayores; numFallasCriticas];
LF = ["numFallasTriviales"; "numFallasMenores"; "numFallasMayores"; "numFallasCriticas"];

# Matriz de pearson de T con F 4x3
MTF = PearsonMat(T, F);

# Matriz de pearson de C con F 4x4
MCF = PearsonMat(C, F);

# Dibujar los diagramas de dispersión entre T y F 
# PearsonDiagrams(T, F, LT, LF);

# Dibujar los diagramas de dispersión entre C y F 
# PearsonDiagrams(C, F, LC, LF);

# Histograma para las variables en T
# Histograms(T, LT);
  
# Histograma para las variables en C
# Histograms(C, LC);

# Histograma para las variables en F
# Histograms(F, LF);