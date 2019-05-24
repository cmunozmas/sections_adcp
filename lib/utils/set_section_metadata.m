function Sections_adcp_calypso2018 = set_section_metadata(Sections_adcp_calypso2018, Input_sections_data, section_name, i)

% determine section date_start and section date_end
    Sections_adcp_calypso2018.Data.(section_name).section_attributes.date_start = datestr(Input_sections_data.section_dates_start(i));
    Sections_adcp_calypso2018.Data.(section_name).section_attributes.date_end = datestr(Input_sections_data.section_dates_end(i));
    
    % UCTD casts 
    Sections_adcp_calypso2018.Data.(section_name).section_attributes.uctd_casts = Input_sections_data.section_uctd_casts(i,:);
    
    % Eco-CTD Level0 files 
    Sections_adcp_calypso2018.Data.(section_name).section_attributes.eco_ctd_level0_file = Input_sections_data.section_eco_ctd_level0_file(i,:);
    
    % variables units
    Sections_adcp_calypso2018.Data.(section_name).section_attributes.variables_units.percentage_good_units = '%';
    Sections_adcp_calypso2018.Data.(section_name).section_attributes.variables_units.percentage_echo_amplitude = 'count';
    Sections_adcp_calypso2018.Data.(section_name).section_attributes.variables_units.correlation_magnitude = 'count';
    
    Sections_adcp_calypso2018.Data.(section_name).section_attributes.variables_units.magnitude_velocity_units = 'mm/s';
    Sections_adcp_calypso2018.Data.(section_name).section_attributes.variables_units.direction_velocity_units = 'deg';
    Sections_adcp_calypso2018.Data.(section_name).section_attributes.variables_units.eastward_velocity_units = 'mm/s';
    Sections_adcp_calypso2018.Data.(section_name).section_attributes.variables_units.northward_velocity_units = 'mm/s';
    Sections_adcp_calypso2018.Data.(section_name).section_attributes.variables_units.vertical_velocity_units = 'mm/s';
    Sections_adcp_calypso2018.Data.(section_name).section_attributes.variables_units.error_velocity_units = 'mm/s';
    
    Sections_adcp_calypso2018.Data.(section_name).section_attributes.variables_units.bottom_track_depth_units = 'cm';
    
    Sections_adcp_calypso2018.Data.(section_name).section_attributes.variables_units.bottom_track_magnitude_velocity_units = 'mm/s';
    Sections_adcp_calypso2018.Data.(section_name).section_attributes.variables_units.bottom_track_direction_velocity_units = 'deg';
    Sections_adcp_calypso2018.Data.(section_name).section_attributes.variables_units.bottom_track_eastward_velocity_units = 'mm/s';
    Sections_adcp_calypso2018.Data.(section_name).section_attributes.variables_units.bottom_track_northward_velocity_units = 'mm/s';
    Sections_adcp_calypso2018.Data.(section_name).section_attributes.variables_units.bottom_track_vertical_velocity_units = 'mm/s';
    Sections_adcp_calypso2018.Data.(section_name).section_attributes.variables_units.bottom_track_error_velocity_units = 'mm/s';   
    
    Sections_adcp_calypso2018.Data.(section_name).section_attributes.variables_units.navigation_platform_heading_units = 'deg';
    Sections_adcp_calypso2018.Data.(section_name).section_attributes.variables_units.navigation_platform_pitch_units = 'deg';
    Sections_adcp_calypso2018.Data.(section_name).section_attributes.variables_units.navigation_platform_roll_units = 'deg';
    Sections_adcp_calypso2018.Data.(section_name).section_attributes.variables_units.navigation_platform_temperature_units = 'deg celsius';
    
    Sections_adcp_calypso2018.Data.(section_name).section_attributes.variables_units.navigation_platform_eastward_velocity_units = 'mm/s';
    Sections_adcp_calypso2018.Data.(section_name).section_attributes.variables_units.navigation_platform_northward_velocity_units = 'mm/s';    
    Sections_adcp_calypso2018.Data.(section_name).section_attributes.variables_units.navigation_platform_magnitude_velocity_units = 'mm/s';
    Sections_adcp_calypso2018.Data.(section_name).section_attributes.variables_units.navigation_platform_direction_units = 'mm/s';
    
end