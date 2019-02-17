clear all£»
%% read the eye postion data out of asc file
fidin = fopen('wjr_MGS_2018_03_31@10_11_25.txt','r');
storage = NaN(490000,4); % all eye postion data will be storaged
i = 0;
j=0;
while ~feof(fidin)                                % if not the end of file, loop
    tline = fgetl(fidin);
    strlength = length(tline);
    if strlength<=3
        j=j+1;
        continue
        
    else
        if tline(strlength) == '.' && tline(strlength-1) == '.' && tline(strlength-2) == '.'
            [~, ~, ~, matches] = regexp(tline,'\d*');
            if length(matches) == 7
                i = i+1;
                storage(i,1) = str2double(matches{1,1});
                storage(i,2) = str2double(matches{(matches{1,2})+str2double(matches{1,3})*0.1;
                storage(i,3) = str2double1,4})+str2double(matches{1,5})*0.1;
                storage(i,4) = str2double(matches{1,6})+str2double(matches{1,7})*0.1;
            else
                continue
            end
        else
            continue
        end
    end
end
clear i;
clear fidin;
clear tline;
clear strlength;
clear matches;
load('wjr_MGS_2018_03_31@10_11_25.mat');
j
%% cut the eye position signal in different trials
for i = 1:length(rawResults)
    if rawResults(i,1) == -1
        rawResults(i,:) = [];
    end
end
for i = 1:length(rawResults)
    
    event_current = event{1,i};
    event_start_time = event_current(2,1);
    event_end_time = event_current(2,end);
    index_num = find(CAI_022(2,:)>=event_start_time & CAI_022(2,:)<=event_end_time);
    % put the horizontal eye position and time into 'eyepos_x' 
    eyepos_x_current(1,1:length(index_num)) = (CAI_022(1,index_num(1,1:end)))*CAI_022_Gain(1,1)*0.05;
    eyepos_x_current(2,1:length(index_num)) = CAI_022(2,index_num(1,1:end));
    eyepos_x{1,i} = eyepos_x_current;
    eyepos_x_current = [];
    % put the vertical eye position and time into 'eyepos_y'
    eyepos_y_current(1,1:length(index_num)) = (CAI_023(1,index_num(1,1:end)))*CAI_023_Gain(1,1)*0.05;
    eyepos_y_current(2,1:length(index_num)) = CAI_022(2,index_num(1,1:end));
    eyepos_y{1,i} = eyepos_y_current;
    eyepos_y_current = [];
end