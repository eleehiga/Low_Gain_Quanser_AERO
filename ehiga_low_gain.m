% Load model parameters
quanser_aero_parameters;
% Load state-space matrices 
quanser_aero_state_space;
% Low Gain LQR controller
del = 0.01;
Q = del * eye(4,4);
G = -B * B';
[X, K, L] = icare(A,[],Q,[],[],[],G)

