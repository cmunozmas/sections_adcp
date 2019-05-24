function date_time_join_num = adjust_adcp_datetime(Input_adcp_data, Time_correction)

date_time = [Input_adcp_data.SerYear Input_adcp_data.SerMon Input_adcp_data.SerDay Input_adcp_data.SerHour Input_adcp_data.SerMin Input_adcp_data.SerSec];
date_time(:,1) = 2018;
date_time_join = datetime(date_time,'Format','dd-MMM-yyyy HH:mm:ss.SS');

switch Time_correction.addition
    case 'False' 
        date_time_join = date_time_join - minutes(Time_correction.minutes) - seconds(Time_correction.seconds); % in case we want to REST time to ADCP time to adapt to UTC
    case 'True'
        date_time_join = date_time_join + minutes(Time_correction.minutes) + seconds(Time_correction.seconds); % in case we want to ADD time to ADCP time to adapt to UTC
end

date_time_join_num = datenum(date_time_join);


end