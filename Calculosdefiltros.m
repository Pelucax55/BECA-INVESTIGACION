%formato e
format shortEng

%CALCULOS PARA FILTROS PASA BAJOS BUTTERWORTH BECA 2023

%Datos filtros

f = 10e3;
n = 3;
rl = 1000;

w = 2*pi*f;


e = sqrt((10^(0.1*0.5))-1);
rpo = w*(e^(-1/n));
Rbo = rl/rpo;
Rc = 1/(rl*rpo);

if n == 3 
   %VALORES TABLA
    Cn1 = 1;
    Ln2 = 2;
    Cn3 = 1;
    
   %DESNORMALIZAR
    C1 = Cn1*Rc
    L2 = Ln2*Rbo
    C3 = Cn3*Rc
end

if n == 5 
   %VALORES TABLA
    Cn1 = 0.6180;
    Ln2 = 1.6180;
    Cn3 = 2;
    Ln4 = 1.6180;
    Cn5 = 0.618; 
    
   %DESNORMALIZAR
    C1 = Cn1*Rc
    L2 = Ln2*Rbo
    C3 = Cn3*Rc
    L4 = Ln4*Rbo
    C5 = Cn5*Rc
end





