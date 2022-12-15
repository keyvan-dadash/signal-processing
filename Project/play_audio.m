
clc

play_audio_file('./keyvan-dadashzadeh-intro-voice.m4a');

function play_audio_file(file_path)
   
   [data,fs]=audioread(file_path);
   obj = audioplayer(data, fs);
   obj.TimerFcn = 'showSeconds';
   obj.TimerPeriod = 1;
   
   playblocking(obj); %i used this method because play method does not work for me
end