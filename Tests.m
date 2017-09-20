load Datos

# Matriz de tiempos 4x50
T = [tReqs; tDisenio; tAuditoriaDis; tAuditoriaImp];

# Matriz de complejidad 3x50
C = [numFuncs; numCiclomatico; numLineas];

# Matriz de fallas 4x50
F = [numFallasTriviales; numFallasMenores; numFallasMayores; numFallasTriviales];

# Matriz de pearson de T con F 4x3
PTF = PearsonMat(T, F);

# Matriz de pearson de C con F 4x4
PCF = PearsonMat(C, F);



