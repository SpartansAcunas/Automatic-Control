%% Compensador adelanto

G = tf([43.15 8.428e-06 67.4], [1.562 14.45 15.62]);
s = tf('s');

H = 1;

% Función de transferencia de lazo cerrado
LC = feedback(G, H);

Gad = tf([1 0.955], [1 1.508]);
s = tf('s');
K = 7.722;
Kcd = 12.199;
Gsd = 1/s*G;

% Error de estado estacionario
G1ad = K*Gs;
t = 0:0.01:2;
figure(1)
lsim(feedback(Kcd * Gsd * Gad,H), t, t)
hold on
lsim (LC,t,t)
hold off
figure(2)
step(feedback(Kcd*Gsd*Gad,H))

Gcd = Kcd*Gsd*Gad;
sisotool(G1ad)
sisotool(Gcd)

%% Compensador de atraso

G = tf([43.15 8.428e-06 67.4], [1.562 14.45 15.62]);
s = tf('s');

H = 1;

% Función de transferencia de lazo cerrado
LC = feedback(G, H);

%t = 0:0.01:35;
Gat = tf([1 0.067], [1 0.00212]);
s = tf('s');
K = 7.722;
Kct = 0.244*0.25271;
Gst = 1/s*G;
% Error de estado estacionario
G1at = K*Gst;
t = 0:0.01:2;
figure(3)
lsim(feedback(Kct * Gst * Gat,H), t, t)
hold on
lsim (LC,t,t)
hold off

figure(4)
step(feedback(Kct*Gst*Gat,H))

Gct = Kct*Gst*Gat;
sisotool(G1at)
sisotool(Gct)
