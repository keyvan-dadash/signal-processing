
clc;

[data,fs]=audioread('./keyvan-dadashzadeh-intro-voice.m4a');
echo_gen(data(:, 1), fs, 0.2, 0.75);

function echo_gen(s, Fs, delay, amp)
 dt = 1/Fs; %find time between points
 N = round(delay/dt); %extract number of points fot the given delay
 s1 = [s; zeros(N, 1)]; %shift audio for adding echo in future
 s2 = [zeros(N, 1); s.*amp]; %create echo signal
 output = s1 + s2; %adding original audio and echo signal together
 if max(abs(output)) > 1 %handling special case that after adding echo and original signal, every 
                            %value must be less than 1
 output = output./max(abs(output));
 end
 plot(output); %draw new audio
 audiowrite('./keyvan-dadashzadeh-echo-intro.m4a', output, Fs); %save new audio
end