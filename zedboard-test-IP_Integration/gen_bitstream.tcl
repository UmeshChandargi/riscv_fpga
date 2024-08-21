
update_ip_catalog -rebuild -scan_changes

upgrade_ip -vlnv NEORV32:user:neorv32_vivado_ip:1.0 [get_ips  design_1_neorv32_vivado_ip_0_0] -log ip_upgrade.log



## Reset the already prepared Systhesis
reset_run synth_1

# Run synthesis, implementation and bitstream generation
launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1

report_ip_status -name ip_status
