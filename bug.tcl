proc get_data {file} {
  set fid [open $file r]
  if {$fid == -1} {
    error "Could not open file: $file"
  }
  set data {}
  while {[gets $fid line] != -1} {
    lappend data $line
  }
  close $fid
  return $data
}

set data [get_data data.txt]
puts "Data: $data"