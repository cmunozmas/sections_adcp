function Sections_adcp_calypso2018 = set_global_metadata(Input_adcp_data, Time_correction)

Sections_adcp_calypso2018.Metadata.RDI_system = Input_adcp_data.RDISystem;
Sections_adcp_calypso2018.Metadata.RDI_pings_per_ensemble = Input_adcp_data.RDIPingsPerEns;
Sections_adcp_calypso2018.Metadata.RDI_sec_per_ping = Input_adcp_data.RDISecPerPing;
Sections_adcp_calypso2018.Metadata.RDI_file_name = Input_adcp_data.RDIFileName;
Sections_adcp_calypso2018.Metadata.RDI_ens_time = Input_adcp_data.RDIEnsTime;
Sections_adcp_calypso2018.Metadata.RDI_ens_interval = Input_adcp_data.RDIEnsInterval;
Sections_adcp_calypso2018.Metadata.RDI_ens_date = Input_adcp_data.RDIEnsDate;
Sections_adcp_calypso2018.Metadata.RDI_bin_size = Input_adcp_data.RDIBinSize;
Sections_adcp_calypso2018.Metadata.RDI_bin1_mid = Input_adcp_data.RDIBin1Mid;
Sections_adcp_calypso2018.Metadata.RDI_bins = Input_adcp_data.SerBins;

switch Time_correction.addition
    case 'False'
        Sections_adcp_calypso2018.Metadata.time_correction = ['A total of ', num2str(Time_correction.minutes), ' minutes and ',  num2str(Time_correction.seconds), ' seconds were decreased from each ensemble time in order to adjust instrument time to UTC time'];
    case 'True'
        Sections_adcp_calypso2018.Metadata.time_correction = ['A total of ', num2str(Time_correction.minutes), ' minutes and ',  num2str(Time_correction.seconds), ' seconds were increased on each ensemble time in order to adjust instrument time to UTC time'];
end