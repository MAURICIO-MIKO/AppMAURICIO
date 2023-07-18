function D_=oper_d(w)

% Calcula el valor del operador D^ del split-step Fourier method
% para un vector de frecuencias.
% 
% Sintaxis: D=oper_d(w), donde:
% --------
%           w=vector de frecuencias discretas
%
% NOTA: Editar parámetros del sistema

% Fco. Ramos, 1996

%Parámetros del sistema:
%-----------------------------------------
landa=1.55e-6;  %longitud de onda para tercera ventana
alfa=4.6e-5;  %atenuación de la fibra en potencia
D=17e-6;  %parámetro de dispersión
%-----------------------------------------
c=3e8;  %velocidad de la luz
b2=-(landa^2)/(2*pi*c)*D;  %parámetro GVD

D_=-j/2*b2*w.^2-alfa/2;  %operador D^