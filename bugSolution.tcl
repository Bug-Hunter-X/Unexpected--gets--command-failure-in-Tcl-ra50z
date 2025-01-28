proc get_data_robust {file} {
  set fid [open $file r]
  if {$fid == -1} {
    error "Could not open file: $file"
  }
  set data {}
  while {[gets $fid line] != -1} {
    # added error handling
    if {[regexp {
} $line]} {
      puts "Warning: newline character detected"
    }
    lappend data $line
  }
  close $fid
  return $data
}

set data [get_data_robust data.txt]
puts "Data: $data"