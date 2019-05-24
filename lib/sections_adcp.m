% set paths
[Paths, Time_correction] = set_paths;

% load data
Input_adcp_data = load([Paths.input_path, Paths.input_adcp_file_name]);
[Input_sections_data.sections_raw_num, Input_sections_data.sections_raw_txt] = xlsread([Paths.input_path, Paths.input_sections_file_name]);

% set datetime and datenum vectors for sections
[Input_sections_data.section_dates_start, Input_sections_data.section_dates_end] = set_datetime_sections(Input_sections_data.sections_raw_num);

% set ancillary information related to each section
Input_sections_data.section_uctd_casts = char(Input_sections_data.sections_raw_txt{:,1});
Input_sections_data.section_eco_ctd_level0_file = char(Input_sections_data.sections_raw_txt{:,2});

% set datetime and datenum vector
date_time_join_num = adjust_adcp_datetime(Input_adcp_data, Time_correction);

% global metadata
Sections_adcp_calypso2018 = set_global_metadata(Input_adcp_data, Time_correction);


% genearte data sections
for i = 1 : length(Input_sections_data.section_dates_start)
    % create section name
    section_name = strcat('section_', num2str(i));
    
    % fill each section metadata
    Sections_adcp_calypso2018 = set_section_metadata(Sections_adcp_calypso2018, Input_sections_data, section_name, i);
    
    % determine indices for date start and date end of section
    ix_start = find(date_time_join_num > Input_sections_data.section_dates_start(i), 1);
    ix_end = find(date_time_join_num > Input_sections_data.section_dates_end(i), 1);
    
    % Fill each section data
    Sections_adcp_calypso2018 = fill_section_data(Sections_adcp_calypso2018, Input_adcp_data, section_name, ix_start, ix_end);

end

% export data files
save([Paths.output_path, Paths.output_adcp_sections_file_name], 'Sections_adcp_calypso2018')

clearvars -except Sections_adcp_calypso2018 Input_adcp_data Input_sections_data