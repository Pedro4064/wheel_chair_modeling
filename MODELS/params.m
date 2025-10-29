% Wheelchair‐model constants from Lombardi Jr & Dedini (2005)
% Source: Dynamical Behavior of a Wheelchair under the Most Common Deformity of the Propulsion Cycle

%% Physical / geometric parameters
m = 110;            % mass of system (kg) 
L = 0.50;           % distance between axles (m) 
l1 = 0.30;          % distance CG to front axle (m) 
l2 = 0.20;          % distance CG to rear axle (m) 
b = 0.70;           % wheelchair width (m) 
h = 0.50;           % height of CG above ground (m) 
g = 9,81;           % Gravity acceleration (m/s^2)
%% Inertia / other
Izz = 6.78;         % moment of inertia about vertical axis (kg·m^2) 

%% Rolling / friction parameters
mu = 0.015;         % rolling friction coefficient (dimensionless) 

%% Propulsion‐cycle timing parameters (standard cycle)
T1 = 0.5;           % time to ramp to Fmax (s) 
T2 = 1.0;           % time constant‐force applied (s) 
T3 = 1.0;           % hand return time (s) on flat surface 
cycle_repeat = 10;  % number of cycles in simulation 

%% Propulsion forces (manual, no assist)
F3_equal = 16.18;   % rear wheel left or right (N) when symmetric propulsion 
% For example, with 10% sagittal disparity
F3_left  = 17.81;   % N 
F4_right = 16.18;   % N 
Fmax = F3_equal;

%% Time‐delay deformity
time_delay = 0.5;   % seconds delay between left and right propulsion cycles 

%% Display all constants
fprintf('Wheelchair model constants:\n');
fprintf('m = %.2f kg\n', m);
fprintf('L = %.2f m, l1 = %.2f m, l2 = %.2f m, b = %.2f m, h = %.2f m\n', L, l1, l2, b, h);
fprintf('Izz = %.2f kg·m², mu = %.3f\n', Izz, mu);
fprintf('T1 = %.2f s, T2 = %.2f s, T3 = %.2f s, cycle_repeat = %d\n', T1, T2, T3, cycle_repeat);
fprintf('F3_equal = %.2f N, F3_left = %.2f N, F4_right = %.2f N\n', F3_equal, F3_left, F4_right);
fprintf('time_delay = %.2f s\n', time_delay);

