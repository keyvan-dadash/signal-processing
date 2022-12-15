
clc;

add_noise_and_write_audio_file('./keyvan-dadashzadeh-intro-voice.m4a');

function add_noise_and_write_audio_file(source_file_path)
    [data,fs]=audioread(source_file_path);
    
     Mean=0.1; %mean value which is result in shift audio
     Var=0.003; %variance value which is result in we have more ferequncy
     z=imnoise(data,'Gaussian',Mean,Var); %add gaussian noise based on two above value
     audiowrite('./keyvan-dadashzadeh-noissy-intro.m4a', z, fs); %create new audio file
     draw_histogram('./keyvan-dadashzadeh-noissy-intro.m4a'); %create diagram
end

function draw_histogram(file_path)
   [data, fs] = audioread(file_path); %read file and get sampled data and sampled rate
   plot(data); %plot data on figure
   xlabel('Time(t)'); %elapsed time
   ylabel('Amplitude'); %sampled audio data is the relative amplitude
   title('Histogram for keyvan dadashzadeh audio');
end