################################################
# Automatically created by Blue Pearl Visual Verification Suite Version 2019.1.53518 06/15/2019 18:45. Windows (64-bit). on Thu Sep 12 10:15:17 2019
################################################

################################################
## Project Options
################################################
if {![info exists BPS::project_rel_to_dir] } {
    set BPS::project_rel_to_dir {C:/Users/aptay/Dropbox/adiuvo/bluepearl/BPS_custom_blog}
}
if {![info exists BPS::project_results_dir] } {
    set BPS::project_results_dir [file join $BPS::project_rel_to_dir ./Results]
}

BPS::set_sdc_format xilinx
set_hierarchy_separator /
set add_reset_to_converted_implicit_fsms false
set algorithmic_status_file [file join $BPS::project_rel_to_dir ./Results/algorithm_status.json]
set allow_asynch_rams true
set allow_entity_single_arch_file false
set allow_implicit_names_when_initialized false
set allow_ram_resets true
set allow_rams_from_sv_structures true
set allow_rams_in_loops true
set analyze_cyclic_signals false
set assume_one_muxed_clock_active true
set assume_reset_only_init false
set assume_state_retention_clock_gating false
set auto_create_black_boxes false
set auto_derived_clock_domains true
set auto_detect_clock_domains false
set auto_discovery_dirs {}
set automate_module_library_search_path false
set autosortsv true
set autosortvhdl true
set check_cdc_from_async_set_reset false
set check_cdc_from_primary_inputs true
set check_cdc_from_unclocked_primary_inputs true
set check_cdc_to_primary_outputs true
set check_cdc_to_unclocked_primary_outputs true
set check_xilinx_objects false
set clock_buses {}
set clock_detection_enabled_via_dffs true
set clock_detection_enabled_via_latches false
set constant_driven_muxes_driving_dff_are_synch_reset true
set control_logic false
set convert_implicit_fsms false
set cyclic_controlled_gates false
set dang_report_design true
set dang_report_module true
set def_systemverilog SYS_VERILOG
set def_verilog VERILOG_2001
set def_vhdl VHDL_2008
set default_message_limit 25
set detailed_algorithmic_update false
set dff_mapping_file {}
set disable_translate_off false
set distributed_control false
set enable_fsm_based_mcp_analysis false
set enable_mcp_sequential_analysis false
set enable_ram_inferencing true
set enable_setreset_detection true
set enable_setreset_detection_latches false
set enable_stagedreset_detection true
set expand_fsm_on_out_of_bounds false
set expand_fsm_to_state_var_size false
set extended_cdc_analysis false
set fanout_limit 8
set force_disable_ace false
set force_entity_single_arch_file false
set gatelevel_verilog_ext .gv
set gates2muxes false
set hccc_report_references false
set ideal_connectivity_for_lib_cells true
set ignore_clock_domain_specs false
set ignore_constant_controlled_false_paths false
set ignore_files {}
set ignore_suffixes {}
set include_ansi_file_search true
set include_asynch_synch_reset_analysis true
set indent_check_comments false
set indent_code_always true
set indent_code_begin true
set indent_code_braces true
set indent_code_cases true
set indent_code_conditionals true
set indent_code_design_units false
set indent_code_functions true
set indent_code_parameters true
set indent_code_ports false
set indent_signal_lists false
set initials_for_names {}
set internally_gated_signal_is_primary_reset false
set isolate_configuration_fileloc false
set ite_depth 3
set liberty_files {}
set libmap {}
set librescan false
set limit_end_points false
set max_bus_width 32
set max_columns 72
set max_iterations_between_updates 100
set max_lines_per_module 80
set max_loop_limit 10000
set max_module_name_length 200
set max_seconds_between_updates 5
set maxfanout_clock 8
set maxfanout_dff 8
set maxfanout_port 8
set maxfanout_setreset 8
set maximum_number_expanded_fsm_states 1024
set mba_constant_size_strict false
set mba_exclude_all_arith false
set mba_exclude_arith false
set mba_exclude_const false
set mba_exclude_count true
set mba_exclude_inc true
set mba_exclude_optimized false
set mba_ignore_variable_vs_integer false
set mcp_data_stability false
set mea_report_missing_else_only false
set minimum_ram_size 0
set module_library_search_path {}
set multiple_cycle_learning false
set multiply_controlled_end_points false
set mux_select_input_is_primary_for_synch_reset false
set no_state_retention_requirement_on_end_points false
set noauto_bb_port_direction true
set non_const_max_loop_limit 1000
set output_of_muxed_clock_as_internal_clock false
set path_analysis false
set path_analysis_all_paths false
set propagate_constant_constraints false
set pulse_control false
set report_all_unnamed_gen_stmts false
set report_aln_sub false
set report_aln_top true
set report_equiv_clock_cdcs true
set report_fpa_cdc off
set report_fsm_default_state_transitions true
set report_library_cells false
set report_muxed_clocks_as_gated_clocks false
set report_on_previously_assigned false
set report_regi_sub true
set report_regi_top true
set report_rego_sub true
set report_rego_top true
set report_rstname_sub false
set report_rstname_top true
set report_staged_reset asynch
set report_synch_reset match
set report_unnamed_blocks_sub false
set report_unnamed_blocks_top true
set report_unnamed_loop true
set report_unnamed_loop_end true
set report_unnamed_loop_exit true
set report_unnamed_loop_next true
set report_unnamed_nongen_blocks true
set report_unnamed_nongen_blocks_end false
set report_unnamed_nongen_blocks_sub true
set report_unnamed_nongen_blocks_top true
set report_unnamed_process_end false
set reset_false_paths off
set sdc_write_add_reg_suffix true
set sdc_write_check_dff_paths true
set sdc_write_check_memory_paths true
set sdc_write_check_po_paths true
set sdc_write_combine_constraints false
set sdc_write_comment_out_hierarchy_separator false
set sdc_write_create_clocks false
set sdc_write_default_clock_period 20
set sdc_write_default_input_delay 0
set sdc_write_default_output_delay 0
set sdc_write_expand_vector_q false
set sdc_write_gen_get_nets false
set sdc_write_generate_functional_exceptions true
set sdc_write_generate_io_delays false
set sdc_write_generate_separate_files false
set sdc_write_generate_set_clock_groups false
set sdc_write_generate_through_exceptions false
set sdc_write_insert_newline false
set sdc_write_mcp_synchronous_clocks true
set sdc_write_split_buses false
set sdc_write_supply_max_to_io_delays true
set sdc_write_supply_min_to_io_delays false
set sdc_write_use_bus_aliases false
set sdc_write_use_source_clock_in_generated_clocks true
set shorten_long_module_names false
set single_domain true
set spaces_per_indent_level 4
set stop_after_error 2147483647
set stop_loading_on_sdc_errors true
set storage_message_limit 10000
set system_verilog_ext {.sv .psl}
set treat_empty_module_as_black_boxes false
set unitname_max_length 200
set user_clockcell_files {}
set user_greycell_files {}
set user_max_comb_levels 20
set veri_cu_mode default
set veri_include_dirs {}
set veri_lib_dirs {}
set veri_lib_files {}
set veri_synthesize_real_as_integer false
set veri_y_suffixes .v
set verilog_ext {.v .veri .ver .vg .tf}
set verilog_header_ext {.vh .svh .h}
set vhdl_ext {.vhdl .vhd .vho .hdl}
set vhdl_std_package_ids_as_keywords true
set xilinx_glbl false
set xilinx_grey_cell_xpr_ip true
BPS::set_resultprefix {}
BPS::set_msg_check_package ACS
BPS::set_xilinx_library none
BPS::set_altera_library none
BPS::set_microsemi_library none -work {}
BPS::set_assertion_format SVA -enabled false
BPS::set_assertion_format PSL -enabled true
BPS::set_mcp_setup_and_hold_time -disabled

################################################
## Report Options
################################################
BPS::set_report -all false
BPS::set_report -ace true
BPS::set_report -bpsvdbinfo false
BPS::set_report -clock true
BPS::set_report -constraint_verification false
BPS::set_report -counter false
BPS::set_report -cyclic_signals false
BPS::set_report -cyclic_registers false
BPS::set_report -disabled_code false
BPS::set_report -dff true
BPS::set_report -gated_clock true
BPS::set_report -equivalent_clock true
BPS::set_report -fsm false
BPS::set_report -hierarchical_object_count false
BPS::set_report -ite false
BPS::set_report -latch true
BPS::set_report -license false
BPS::set_report -module false
BPS::set_report -missing_modules true
BPS::set_report -muxes_driving_dff false
BPS::set_report -net false
BPS::set_report -object_count false
BPS::set_report -keywords false
BPS::set_report -parameter false
BPS::set_report -port false
BPS::set_report -pulse_generator false
BPS::set_report -ram false
BPS::set_report -register_clock false
BPS::set_report -reset true
BPS::set_report -runtime false
BPS::set_report -sloc false
BPS::set_log_options -paths false
BPS::set_log_options -systeminfo false
BPS::set_log_options -timestamp_messages false
BPS::set_log_options -mustfixsummary false
BPS::set_log_options -wontfixsummary false
BPS::set_log_options -cdcwaiversummary false
BPS::set_extended_summary_report -enabled=false

################################################
## Enabled Checks
################################################
BPS::set_check_enabled * -enabled false
BPS::set_check_enabled SLCC -enabled true

################################################
## Logging Options
################################################
BPS::clear_log_package_summary
BPS::set_memorystateinterval 0

################################################
## Naming Analysis Settings
################################################
BPS::reset_naming_options
# Check 'NAME_ANALYSIS_REGISTERS' is disabled
#     BPS::set_naming_option -type DFFs -regex .*_reg -disallowed_regex {} -case_insensitive false -use_full_path false -run_parent_analysis true
# Check 'NAME_ANALYSIS_CLOCKS' is disabled
#     BPS::set_naming_option -type {Internal Clocks} -regex {${PARENT_CLOCK}.*} -disallowed_regex {} -case_insensitive false -use_full_path false -run_parent_analysis true
# Check 'NAME_ANALYSIS_CLOCKS' is disabled
#     BPS::set_naming_option -type {Clocks - Active Low} -regex .*_n -disallowed_regex {} -case_insensitive false -use_full_path false -run_parent_analysis true
# Check 'NAME_ANALYSIS_RESETS' is disabled
#     BPS::set_naming_option -type {Resets - Active Low} -regex .*_n -disallowed_regex {} -case_insensitive false -use_full_path false -run_parent_analysis true
# Check 'NAME_ANALYSIS_SETS' is disabled
#     BPS::set_naming_option -type {Sets - Active Low} -regex .*_n -disallowed_regex {} -case_insensitive false -use_full_path false -run_parent_analysis true
# Check 'NAME_ANALYSIS_CLOCKENABLE' is disabled
#     BPS::set_naming_option -type {Clock Gating/Enabling Signals - Active Low} -regex .*_n -disallowed_regex {} -case_insensitive false -use_full_path false -run_parent_analysis true
# Check 'STATE_VAR_NAME' is disabled
#     BPS::set_naming_option -type {FSM State Name - Next State} -regex (.*_next)|(.*_ns) -disallowed_regex {} -case_insensitive false -use_full_path false -run_parent_analysis true
# Check 'IDENTIFY_STATIC_CONTROL_REGISTERS' is disabled
#     BPS::set_naming_option -type {Identify - Static Control Registers} -regex (.*_cfg)|(config.*) -disallowed_regex {} -case_insensitive true -use_full_path false
BPS::set_naming_option -type {Identify - Top Level Clocks} -regex (.*ck.*)|(.*clk.*)|(.*clock.*) -disallowed_regex (.*first.*)|(.*burst.*)|(.*enable_clk.*) -case_insensitive true -use_full_path false
BPS::set_naming_option -type {Identify - Internal Clocks} -regex (.*ck.*)|(.*clk.*)|(.*clock.*) -disallowed_regex (.*first.*)|(.*burst.*)|(.*enable_clk.*) -case_insensitive true -use_full_path false
BPS::set_naming_option -type {Identify - Clock Gating Signals} -regex {} -disallowed_regex {} -case_insensitive false -use_full_path false
# Check 'IDENTIFY_SET_SIGNALS' is disabled
#     BPS::set_naming_option -type {Identify - Set Signals} -regex (_sn)|(preset)|(set)|(sn)|(.*set)|(set.*) -disallowed_regex (.*first.*)|(.*burst.*)|(.*enable_clk.*) -case_insensitive true -use_full_path false
# Check 'IDENTIFY_RESET_SIGNALS' is disabled
#     BPS::set_naming_option -type {Identify - Reset Signals} -regex (_rn)|(clear)|(clr)|(reset)|(rn)|(rst)|(.*clear.*)|(.*clr.*)|(.*reset.*)|(.*rst.*)|(.*clr)|(.*reset)|(.*rst)|(clear.*)|(clr.*)|(reset.*)|(rst.*) -disallowed_regex (.*first.*)|(.*burst.*)|(.*enable_clk.*) -case_insensitive true -use_full_path false
# Check 'IDENTIFY_DANGLING_SIGNALS' is disabled
#     BPS::set_naming_option -type {Exclude Dangling Signals} -regex .*_nc -disallowed_regex {} -case_insensitive false -use_full_path false
# Check 'IDENTIFY_DANGLING_PINS' is disabled
#     BPS::set_naming_option -type {Exclude Dangling Pins} -regex .*_nc -disallowed_regex {} -case_insensitive false -use_full_path false
# Check 'IDENTIFY_TIE_NETS' is disabled
#     BPS::set_naming_option -type {Identify - Tie Nets} -regex (TIE_HI_.*)|(TIE_LO_.*) -disallowed_regex {} -case_insensitive true -use_full_path false

################################################
## Assignment Options
################################################
set mca_report_all false
set mia_report_all false
set mea_report_all false
set meb_report_all false
set etb_report_all false
set uba_report_clocked_blocks false
set mdr_report_bidir false
set mdr_report_wired false

################################################
## Waivers
################################################

BPS::clear_all_waivers

################################################
## Ignored TCL Command Settings
################################################
BPS::clear_ignored_commands

################################################
## HDL Settings
################################################
BPS::clear_parameters
BPS::clear_ignore_parameters
BPS::clear_comp_defines
BPS::set_language_checking_level default
BPS::clear_input_files
BPS::add_input_files -comp_unit_mode Default -work work -language auto [list [file join $BPS::project_rel_to_dir ./test_case.vhd]]
