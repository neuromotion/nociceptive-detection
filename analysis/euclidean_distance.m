function euclid_d = euclidean_distance(data)
%% Calculates euclidean distance at each intensity for the session
% Uses generic formula sqrt(sum(self_report(i)-reflex_report(i))^2)
% See materials and methods from Black et al., 2020

%% set vars
self_rep = data.self_rep;
rflx_rep = data.rflx_rep;
trial_num = data.trial_num;
stim_vals = data.stim_vals;

%% create similarity index matricies for euclidean distance calculations
si_trials = zeros(trial_num,1);
euclid_d = zeros(length(unique(stim_vals)), 2);
euclid_d(:,1) = unique(stim_vals);

%% calculate difference for each trial
for x = 1:trial_num
    
    si_trials(x,1) = (self_rep(x)-rflx_rep(x))^2;
  
end

%% calculate euclidean distance for each intensity
for x = 1:unique(stim_vals)
    
    idx = find(data.stim_vals == euclid_d(x,1));
    sum_si_trials = sum(si_trials(idx));
    euclid_d(x,2) = sqrt(sum_si_trials);

end

end
