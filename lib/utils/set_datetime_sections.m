function [section_dates_start, section_dates_end] = set_datetime_sections(sections_raw_num)

    for i = 1 : length(sections_raw_num)
        section_dates_start(:,i)= addtodate(sections_raw_num(i,1), 1904, 'year');
        section_dates_end(:,i)= addtodate(sections_raw_num(i,2), 1904, 'year');
    end

end
