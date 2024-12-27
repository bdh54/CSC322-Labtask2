#!/bin/tcsh

if ($#argv != 2) then
	echo "Error message - please provide two extensions"
	exit
else 
	set old_extension = $1
	set new_extension = $2
endif

set old_extension_counter = `ls *.$old_extension | wc -l`
if ($old_extension_counter == 0) then
	echo "Error message - no files with $old_extension"
	exit
else 
	set old_extension_files = `ls *.$old_extension`
	foreach file ($old_extension_files)
		set newfile = `basename -s $old_extension $file`
		set newfile = $newfile$new_extension
		mv $file $newfile
		echo "Changed $file to $newfile"
	end
endif

		
		
		


 

