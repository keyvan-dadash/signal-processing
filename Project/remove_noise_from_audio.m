clc;

[sample_data, sample_rate] = audioread('./keyvan-dadashzadeh-noissy-intro.m4a');
signal = medfilt1(sample_data,5);      % Applying median filter
%_______________________________________________________________________________%
Fs = sample_rate;                       % Sampling Frequency (Hz)
Fn = Fs/2;                              % Nyquist Frequency (Hz)
Wp = 2000/Fn;                           % Passband Frequency (Normalised)
Ws = 2500/Fn;                           % Stopband Frequency (Normalised)
Rp =  20;                               % Passband Ripple (dB)
Rs = 50;                               % Stopband Ripple (dB)
[n,Ws] = cheb2ord(Wp,Ws,Rp,Rs);         % Filter Order
[z,p,k] = cheby2(n,Rs,Ws, 'low');        % Filter Design
[soslp,glp] = zp2sos(z,p,k);    % Convert To Second-Order-Section For Stability
filtered_sound2 = filtfilt(soslp, glp, signal);
%_______________________________________________________________________________%
plot(filtered_sound2);
audiowrite('./keyvan-dadashzadeh-removed-noissy-intro.m4a', filtered_sound2, sample_rate);
