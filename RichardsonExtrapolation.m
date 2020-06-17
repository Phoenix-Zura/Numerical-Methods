v = @(t) 2*t/(sqrt(1+t^2)); %% Given velocity function
t = 5; %% given time
h1 = 0.5;  %% stepsize h = 0.5
h2 = 0.25;  %% stepsize h = 0.25
%% applying Richardson's extrapolation for differentiation
% since acceleration (a) = d(v)/dt
answer1 = (v(t+h1)-v((t-h1)))/(2*h1);
answer2 = (v(t+h2)-v((t-h2)))/(2*h2);
%% Display Outout
fprintf('The acceleration at t = 5sec when stepsize h = 0.5 is: \t%f\n',answer1);
fprintf('The acceleration at t = 5sec when stepsize h = 0.25 is: \t%f\n',answer2);
