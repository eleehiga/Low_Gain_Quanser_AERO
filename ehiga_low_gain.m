% Load model parameters
quanser_aero_parameters;
% Load state-space matrices 
quanser_aero_state_space;
% Low Gain LQR controller
del = 300;
Q = del * eye(4,4);
%Q = diag([80000 100 0 0]) % works for simulation
%Q = diag([80000 100000 0 0]) %somewhat works for actual machine
[X, L, G] = care(A,B,Q)
eig(A-B*G)

