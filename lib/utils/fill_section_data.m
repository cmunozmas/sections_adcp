function Sections_adcp_calypso2018 = fill_section_data(Sections_adcp_calypso2018, Input_adcp_data, section_name, ix_start, ix_end)    

    % Percentage Good
    Sections_adcp_calypso2018.Data.(section_name).section_data.percentage_good.percentage_good_1 = Input_adcp_data.SerPG1(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.percentage_good.percentage_good_2 = Input_adcp_data.SerPG2(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.percentage_good.percentage_good_3 = Input_adcp_data.SerPG3(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.percentage_good.percentage_good_4 = Input_adcp_data.SerPG4(ix_start : ix_end);
        
    % Echo Amplitude
    Sections_adcp_calypso2018.Data.(section_name).section_data.echo_amplitude.echo_amplitude_1 = Input_adcp_data.SerEA1cnt(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.echo_amplitude.echo_amplitude_2 = Input_adcp_data.SerEA2cnt(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.echo_amplitude.echo_amplitude_3 = Input_adcp_data.SerEA3cnt(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.echo_amplitude.echo_amplitude_4 = Input_adcp_data.SerEA4cnt(ix_start : ix_end);
    
    % Correlation magnitude
    Sections_adcp_calypso2018.Data.(section_name).section_data.correlation_magnitude.correlation_magnitude_1 = Input_adcp_data.SerC1cnt(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.correlation_magnitude.correlation_magnitude_2 = Input_adcp_data.SerC2cnt(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.correlation_magnitude.correlation_magnitude_3 = Input_adcp_data.SerC3cnt(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.correlation_magnitude.correlation_magnitude_4 = Input_adcp_data.SerC4cnt(ix_start : ix_end);    
    
    % Velocity components and magnitude
    Sections_adcp_calypso2018.Data.(section_name).section_data.velocity.direction_velocity = Input_adcp_data.SerDir10thDeg(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.velocity.magnitude_velocity = Input_adcp_data.SerMagmmpersec(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.velocity.eastward_velocity = Input_adcp_data.SerEmmpersec(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.velocity.northward_velocity = Input_adcp_data.SerNmmpersec(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.velocity.vertical_velocity = Input_adcp_data.SerVmmpersec(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.velocity.error_velocity = Input_adcp_data.SerErmmpersec(ix_start : ix_end);
    
    % Bottom track depth
    Sections_adcp_calypso2018.Data.(section_name).section_data.bottom_track.bottom_track_depth.bottom_track_depth_B1 = Input_adcp_data.AnBTDepthcmB1(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.bottom_track.bottom_track_depth.bottom_track_depth_B2 = Input_adcp_data.AnBTDepthcmB2(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.bottom_track.bottom_track_depth.bottom_track_depth_B3 = Input_adcp_data.AnBTDepthcmB3(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.bottom_track.bottom_track_depth.bottom_track_depth_B4 = Input_adcp_data.AnBTDepthcmB4(ix_start : ix_end);    
    
    % Bottom track velocity
    Sections_adcp_calypso2018.Data.(section_name).section_data.bottom_track.bottom_track_velocity.bottom_track_direction = Input_adcp_data.AnBTDir10thDeg(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.bottom_track.bottom_track_velocity.bottom_track_magnitude = Input_adcp_data.AnBTMagmmpersec(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.bottom_track.bottom_track_velocity.bottom_track_eastward_velocity = Input_adcp_data.AnBTEmmpersec(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.bottom_track.bottom_track_velocity.bottom_track_northward_velocity = Input_adcp_data.AnBTNmmpersec(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.bottom_track.bottom_track_velocity.bottom_track_vertical_velocity = Input_adcp_data.AnBTVmmpersec(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.bottom_track.bottom_track_velocity.bottom_track_error_velocity = Input_adcp_data.AnBTErmmpersec(ix_start : ix_end);
    
    % Navigation
    Sections_adcp_calypso2018.Data.(section_name).section_data.navigation.platform_heading = Input_adcp_data.AnH100thDeg(ix_start : ix_end); 
    Sections_adcp_calypso2018.Data.(section_name).section_data.navigation.platform_pitch = Input_adcp_data.AnP100thDeg(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.navigation.platform_roll = Input_adcp_data.AnR100thDeg(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.navigation.platform_temperature = Input_adcp_data.AnT100thDeg(ix_start : ix_end);
    
    Sections_adcp_calypso2018.Data.(section_name).section_data.navigation.platform_first_latitude = Input_adcp_data.AnFLatDeg(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.navigation.platform_first_longitude = Input_adcp_data.AnFLonDeg(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.navigation.platform_last_latitude = Input_adcp_data.AnLLatDeg(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.navigation.platform_last_longitude = Input_adcp_data.AnLLonDeg(ix_start : ix_end); 
    
    Sections_adcp_calypso2018.Data.(section_name).section_data.navigation.platform_eastward_velocity = Input_adcp_data.AnNVEmmpersec(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.navigation.platform_northward_velocity = Input_adcp_data.AnNVNmmpersec(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.navigation.platform_magnitude_velocity = Input_adcp_data.AnNVMagmmpersec(ix_start : ix_end);
    Sections_adcp_calypso2018.Data.(section_name).section_data.navigation.platform_direction = Input_adcp_data.AnNVDir10thDeg(ix_start : ix_end);