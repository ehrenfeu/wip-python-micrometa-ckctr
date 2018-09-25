// BEGIN stitching macro HEAD

// default values required to be set:
name = '';  // the dataset name
compute = true;  // whether to compute the overlap)
input_dir = '';  // user will be asked if empty
use_batch_mode = false;
export_format = ".ome.tif";  // usually ".ome.tif" or ".ids"
split_z_slices = false;

// remember starting time to calculate overall runtime
time_start = getTime();
// generate a timestamp string to print into the logfile
getDateAndTime(year, month, dow, dom, hour, minute, second, msec);
tstamp = "" + year + "-" + month + "-" + dom + "_" + hour + "" + minute;

function get_tileconfig_files(dir) {
    /* Generate an array with tile config files.
     *
     * Scan a directory for files matching a certain pattern and assemble a
     * new array with the filenames.
     */
    pattern = 'mosaic_[0-9]+\.txt';
    filelist = getFileList(dir);
    tileconfigs = newArray(filelist.length);
    ti = 0;  // the tileconfig index
    for (fi=0; fi<filelist.length; fi++) {
        if(matches(filelist[fi], pattern)) {
            tileconfigs[ti] = filelist[fi];
            //print(tileconfigs[ti]);
            ti++;
        }
    }
    return Array.trim(tileconfigs, ti);
}

// END stitching macro HEAD

