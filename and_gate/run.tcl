read_hdl full_adder.v
read_libs /cad_area/cad/FOUNDRY/digital/100nm/dig/lib/slow.lib
elaborate full_adder
syn_gen
syn_map
syn_opt
write_hdl > netlist.v

