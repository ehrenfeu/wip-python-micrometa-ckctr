// BEGIN stitching macro BODY

/*\
 * Variables REQUIRED to be set for body:
 *   name : str (dataset name)
 *   compute : boolean (whether to compute the overlap)
\*/

hr = "========================================";  // horizontal rule
hr = hr + hr;

print(hr);
print("Stitching macro for dataset [" + name + "]");
if(input_dir == '') {
    msg = "Select directory for dataset '" + name + "'";
    input_dir = getDirectory(msg);
}
// input_dir could be empty if the dialog was canceled or operating headless
if (input_dir == '') {
    print(hr);
    print("ERROR: No input directory given, stopping!");
    print(hr);
    exit;
}
output_dir = input_dir;
sep = File.separator;

setBatchMode(use_batch_mode);

// stitching parameters template
tpl  = "type=[Positions from file] ";
tpl += "order=[Defined by TileConfiguration] ";
tpl += "directory=[" + input_dir + "] ";
tpl += "fusion_method=[Linear Blending] ";
tpl += "regression_threshold=0.30 ";
tpl += "max/avg_displacement_threshold=2.50 ";
tpl += "absolute_displacement_threshold=3.50 ";
tpl += "computation_parameters=";
tpl += "[Save computation time (but use more RAM)] ";
tpl += "image_output=[Fuse and display] ";
if(compute) {
    tpl += "compute_overlap ";
    tpl += "subpixel_accuracy ";
}

tileconfigs = get_tileconfig_files(input_dir);
for (i = 0; i < tileconfigs.length; i++) {
    layout_file = tileconfigs[i];
    export_file  = output_dir + sep;
    export_file += replace(layout_file, '.txt', export_format);
    param = tpl + "layout_file=[" + layout_file + "]";
    print(hr);
    print("*** [" + name + "]: processing " + layout_file);
    run("Grid/Collection stitching", param);
    bfexp  = "save=[" + export_file + "] ";
    if (split_z_slices) {
        bfexp += "write_each_z_section ";
    }
    bfexp += "compression=Uncompressed";
    print("*** [" + name + "]: finished " + layout_file);
    print("*** Exporting to " + export_format + ": " + export_file);
    run("Bio-Formats Exporter", bfexp);
    close();
    print("*** Finished exporting to " + export_format + ".");
}
duration = (getTime() - time_start) / 1000;
print(hr);
print("[" + name + "]: processed " + tileconfigs.length + " mosaics.");
print("Overall duration: " + duration + "s");
print(hr);

// save the "Log" window into a text file:
logmessages = getInfo("log");
fh = File.open(output_dir + sep + 'log_stitching_' + tstamp + '.txt');
print(fh, tstamp); // write the timestamp as first line
print(fh, logmessages);
File.close(fh);

setBatchMode(false);

// END stitching macro BODY
