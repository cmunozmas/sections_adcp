function [Paths, Time_correction] = set_paths


Time_correction.addition = 'True';
Time_correction.minutes = 3;
Time_correction.seconds = 47.00;

Paths.main_path = '/home/cmunoz/Documents/programming/MATLAB/sections_adcp/';

Paths.input_path = [Paths.main_path, 'test/in/'];
Paths.output_path = [Paths.main_path,'test/out/'];

Paths.input_adcp_file_name = 'test_data.mat';
Paths.input_sections_file_name = 'sections.xlsx';
Paths.output_adcp_sections_file_name = 'test_data.mat';
end
