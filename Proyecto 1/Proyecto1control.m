
syms x
Gp = (0.16667) / (x * (x+8.51) * (x + 0.1567) * (x^2 + x + 2.5));
disp('Valor de Kp');
kp=limit(Gp, x, 0) %Teorema de Valor Final

Gv = (0.16667*x) / (x * (x+8.51) * (x + 0.1567) * (x^2 + x + 2.5));
disp('Valor de Kv');
kv=limit(Gv, x, 0) %Teorema de Valor Final

Gs = (0.16667*x^2) / (x * (x+8.51) * (x + 0.1567) * (x^2 + x + 2.5));
disp('Valor de Ka');
ka=limit(Gs, x, 0) %Teorema de Valor Final

syms x
Gp = (0.125*x + 0.125) / (0.75*x^6 + 8*x^5 + 16.62*x^4 + 26.62*x^3 + 19.75*x^2 + 2.5*x + 0.125);
disp('Valor de Kp');
kp=limit(Gp, x, 0) %Teorema de Valor Final

Gv = ((0.125*x + 0.125)*x) / (0.75*x^6 + 8*x^5 + 16.62*x^4 + 26.62*x^3 + 19.75*x^2 + 2.5*x + 0.125);
disp('Valor de Kv');
kv=limit(Gv, x, 0) %Teorema de Valor Final

Gs = ((0.125*x + 0.125)*x^2) / (0.75*x^6 + 8*x^5 + 16.62*x^4 + 26.62*x^3 + 19.75*x^2 + 2.5*x + 0.125);
disp('Valor de Ka');
ka=limit(Gs, x, 0) %Teorema de Valor Final

Pasos a seguir para el proyecto
%Bloques
G1 = tf(1/2, [3/4 13/2 1]);
G2 = 1/4;
G3 = tf(1, [1 0]);
G4 = tf(1, [1 1 5/2]);
%funcion en lazo abierto
H = tf(1, [1 1])

G = G1 * G2* G3 * G4

disp('G(S): ');
zpk(G)

GH = G * H;
disp('G(s) * H(s)');
zpk(GH)


% Error en estado estacionario Lazo abierto
syms x
Gp = (0.16667) / (x * (x+8.51) * (x + 0.1567) * (x^2 + x + 2.5));
disp('Error de estado estacionario');
kp=limit(Gx, x, 0) %Teorema de Valor Final

Gv = (0.16667*x) / (x * (x+8.51) * (x + 0.1567) * (x^2 + x + 2.5));
disp('Error de estado estacionario');
kv=limit(Gx, x, 0) %Teorema de Valor Final

Gp = (0.16667*x^2) / (x * (x+8.51) * (x + 0.1567) * (x^2 + x + 2.5));
disp('Error de estado estacionario');
ka=limit(Gx, x, 0) %Teorema de Valor Final


Lazo_cerrado = feedback(G, H);

%Respuesta al escalon del sistema a lazo cerrado
%El error 0 se observa en la grafica
figure (2)
step(Lazo_cerrado)
title('Error para lazo cerrado')
hold on

%Lugar de las raices
figure (3)
rlocus(GH)
title('Lugar de las raíces')
hold on


Kc=1.3088
Kc=66668/1333517
Control_P = feedback(Kc*G,H)
figure (4)
step(Control_P)
title('step para lazo cerrado con proporcional')
hold on

figure (4)
step(Lazo_cerrado)
title('step para lazo cerrado con proporcional')
hold on
%Calculo de Compensador atraso
%Limite con Kc
syms x
Gy = (0.16667 * x * Kc) / (x * (x+8.51) * (x + 0.1567) * (x^2 + x + 2.5));
disp('Error de estado estacionario');
limit(Gy, x, 0) %Teorema de Valor Final




GAd = (x*0.16667 * (x+1) * 4201634.77) / ((x+8.51) *(x+1.01) *(x^2 + 0.1432*x + 0.007743) *(x^2 + 1.003*x + 2.504));
disp('Error de estado estacionario');
KvAD=limit(GAd, x, 0) %Teorema de Valor Final


GAt = (x*0.16667 * (x+1) * (x + 0.05 )) / ((x + 0.003571)*(x+8.51) *(x+1.01) *(x^2 + 0.1432*x + 0.007743) *(x^2 + 1.003*x + 2.504));
disp('Error de estado estacionario');
KvAT=limit(GAd, x, 0) %Teorema de Valor Final

