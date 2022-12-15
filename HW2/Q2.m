line = linspace(-10, 15, 26)';
values = zeros(1, 26);
x = [1.5, 1.5, 1.5, 1.5];
y = [2, 2, 2, 2, 2];
endPoint = 15;
base_index = 10;
threshold_end = 3;
for start = -10:15
    local_value = 0;
    current_index_for_cal = start + base_index + 1;
    for threshold = 0:threshold_end
        index_x = start - threshold;
        val_x = x(1, threshold + 1);
        val_y = y(1, threshold + 1);
        if(index_x <= 4 && index_x >= 0)
            local_value = val_y * val_x + local_value;
        end
    end
    values(1, current_index_for_cal) = local_value;
end
stem(line, values);
xticks(-10:1:15);
yticks(0:1:20);