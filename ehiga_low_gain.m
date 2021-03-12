% Load model parameters
quanser_aero_parameters;
% Load state-space matrices 
quanser_aero_state_space;
% Low Gain LQR controller
del = 0.01;
Q = del * eye(4,4);
[X, L, G] = care(A,B,Q)
eig(A-B*G)

