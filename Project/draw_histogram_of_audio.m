
clc

draw_histogram_plot('./keyvan-dadashzadeh-intro-voice.m4a');
%draw_histogram_histo('./keyvan-dadashzadeh-intro-voice.m4a');

function draw_histogram_plot(file_path)
   [data, fs] = audioread(file_path); %read file and get sampled data and sampled rate
   plot(data); %plot data on figure
   xlabel('Time(t)'); %elapsed time
   ylabel('Amplitude'); %sampled audio data is the relative amplitude
   title('Histogram for keyvan dadashzadeh audio');
end

function draw_histogram_histo(file_path)
   [data, fs] = audioread(file_path); %read file and get sampled data and sampled rate
   histogram(data); %plot data on figure
   xlabel('Time(t)'); %elapsed time
   ylabel('Amplitude'); %sampled audio data is the relative amplitude
   title('Histogram for keyvan dadashzadeh audio');
end