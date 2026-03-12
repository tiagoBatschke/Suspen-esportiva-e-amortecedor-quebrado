pkg load control

% --- Parâmetros (QUEBRADO) ---
m2 = 300; m1 = 40; kt = 150000;
k1 = 15000; 
c1 = 100; % Amortecimento reduzido (falha)

% --- Matrizes ---
A = [0 1 0 0; -(k1+kt)/m1 -c1/m1 k1/m1 c1/m1; 0 0 0 1; k1/m2 c1/m2 -k1/m2 -c1/m2];
B = [0; kt/m1; 0; 0];
C = [1 0 0 0; 0 0 1 0]; 
D = [0; 0];

sys = ss(A, B, C, D);
t = 0:0.01:5;
u = 0.1 * ones(size(t)); 
[y, t] = lsim(sys, u, t);

% --- Plot ---
figure;
plot(t, u, 'k--', t, y(:,1), 'b', t, y(:,2), 'r', 'LineWidth', 1.5);
title('Simulação: Amortecedor Quebrado');
legend('Estrada', 'Roda', 'Chassi');
grid on;
