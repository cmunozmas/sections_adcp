# sections_adcp
This set of Matlab scripts allow processing Teledyne ADCP data exported as mat files according to pre-defined sections in a separate xlsx file. 

## Prerequisites:
Matlab 2018a or higher

## The following features are already implemented in the toolbox:
input files:
- sta datafile containing all sta files exported from WinADCP. To create the single file open a windows cmd prompt, the insert "type abc*.sta > all_abc.sta"
- xlsx file containing date_start, date_end, comments and extra metadata.
Input files need to be inserted in /test/in/

output file:
- .mat file containing the data per each section and metadata too.
Output file will be created in /test/out/

To configure the main input path to the data, open set_paths.m file contained in /lib/utils/ and edit the firld Paths.main_path

The main program runs from sections_adcp.m file contained in /lib/

## Copyright

Copyright (C) 2013-2018 ICTS SOCIB - Servei d'observació i predicció costaner de les Illes Balears http://www.socib.es

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see http://www.gnu.org/licenses/.
