if { [catch {
set_location /home/012/k/kt/ktd170030/cad/gf65/primelib_gf65/nor3
log_info "[clock format [clock seconds]]: Sourcing environment settings"
set t0 [clock seconds]
set sis_log_file "/var/tmp/pl.571782.W$::env(CDPL_WORKERID).[lindex [split [info hostname] '.'] 0].[pid].log"
if { [info exists ::env(SGE_TASK_ID)] } {
  if { $::env(SGE_TASK_ID) != "undefined" } {
    set sis_log_file "/var/tmp/pl.571782.W$::env(SGE_TASK_ID).[lindex [split [info hostname] '.'] 0].[pid].log"
  }
}
set jobName [lindex $argv 0]

# Parameter block and pintype definitions.  The following definitions
# preserve any (pintype) parameters set outside of the configure.tcl file.
define_parameters default {
    set PLACEHOLDER X
}

define_parameters liberty_model {
    set default_cell_leakage_power 0.0
    set default_fanout_load 1.0
    set default_inout_pin_cap 1.0
    set default_input_pin_cap 1.0
    set default_leakage_power_density 0.0
    set default_output_pin_cap 0.0
    set delay_model table_lookup
    set input_threshold_pct_fall 50.0
    set input_threshold_pct_rise 50.0
    set output_threshold_pct_fall 50.0
    set output_threshold_pct_rise 50.0
    set slew_lower_threshold_pct_fall 10.0
    set slew_lower_threshold_pct_rise 10.0
    set slew_upper_threshold_pct_fall 90.0
    set slew_upper_threshold_pct_rise 90.0
}

define_parameters nor3 {
    set PLACEHOLDER X
}

define_parameters validation {
    set absolute_tolerance 0.0
    set activity_factor 0.5
    set aging_corr_pt_clock_period 10.0
    set aocv_absolute_tolerance 0.05
    set aocv_relative_tolerance 0.05
    set capacitance_absolute_tolerance 0.001
    set capacitance_product_tolerance 0.0
    set capacitance_relative_tolerance 0.01
    set ccs_absolute_tolerance 0.0
    set ccs_noise_absolute_tolerance 0.04
    set ccs_noise_product_tolerance 0.0
    set ccs_noise_relative_tolerance 0.015
    set ccs_product_tolerance 0.0
    set ccs_relative_tolerance 0.0
    set ccsn_check_disable {}
    set ccsn_current_absolute_tolerance 0.01
    set ccsn_current_product_tolerance 0.0
    set ccsn_current_relative_tolerance 0.04
    set ccsn_height_absolute_tolerance 0.0
    set ccsn_height_product_tolerance 0.0
    set ccsn_height_relative_tolerance 0.0
    set ccsn_output_voltage_absolute_tolerance 0.0
    set ccsn_output_voltage_product_tolerance 0.0
    set ccsn_output_voltage_relative_tolerance 0.0
    set ccsn_width_absolute_tolerance 0.0
    set ccsn_width_product_tolerance 0.0
    set ccsn_width_relative_tolerance 0.0
    set centile_delay_absolute_tolerance 0.005
    set centile_delay_relative_tolerance 0.05
    set centile_slew_absolute_tolerance 0.005
    set centile_slew_relative_tolerance 0.05
    set charge_absolute_tolerance 0.1
    set charge_relative_tolerance 0.01
    set cmax_validation_check 0
    set compare_liberty_index_relative_tolerance 0.01
    set compare_liberty_tolerance_check_criteria and
    set compare_library_inout_load_mode 0
    set compare_library_interpolation 0
    set compare_library_load_indices {}
    set compare_library_skewness_def_ref denormalized
    set compare_library_skewness_def_test denormalized
    set compare_library_slew_indices {}
    set compare_library_table_points {}
    set compare_library_top_failures 0
    set compare_only_common_index_range 0
    set constraint_corr_constraint_slew_indices {}
    set constraint_corr_related_slew_indices {}
    set corr_aggressor_input {}
    set corr_aggressor_output {}
    set corr_coupling_capacitance_multiplier 1.0
    set corr_glitch_area_reltol 0.05
    set corr_glitch_height_reltol 0.05
    set corr_net_capacitance 0.01
    set corr_net_model pi
    set corr_net_model_segments 5
    set corr_net_resistance 0.1
    set current_absolute_tolerance 0.04
    set current_relative_tolerance 0.01
    set data_range_max 0.0
    set data_range_min 0.0
    set dc_current_absolute_tolerance 0.01
    set dc_current_product_tolerance 0.0
    set dc_current_relative_tolerance 0.04
    set delay_absolute_tolerance 0.005
    set delay_product_tolerance 0.0
    set delay_relative_tolerance 0.05
    set delay_sensitivity_absolute_tolerance 0.0
    set delay_sensitivity_product_tolerance 0.0
    set delay_sensitivity_relative_tolerance 0.0
    set delay_variance_absolute_tolerance 0.0
    set delay_variance_product_tolerance 0.0
    set delay_variance_relative_tolerance 0.0
    set ecsm_absolute_tolerance 0.0
    set ecsm_product_tolerance 0.0
    set ecsm_relative_tolerance 0.0
    set enable_power_corr 0
    set enable_total_power_comparison 0
    set energy_absolute_tolerance 5e-05
    set energy_product_tolerance 0.0
    set energy_relative_tolerance 0.02
    set enhanced_latch_merging 0
    set gends_config_file [get_location]/reports/gends_config.tcl
    set generate_sdf_cmd_file [get_install_path]/etc/validation/validate_hdl/generate_sdf.tcl
    set genlte_cmax 0.0
    set genlte_cmin 0.0
    set genlte_freq_indices 1
    set genlte_freq_slew_pairs {}
    set genlte_slew_indices 1
    set hdl_target_simulator VCS
    set hdl_target_simulator_options {}
    set hdl_target_simulator_path vcs
    set hidden_capacitance_absolute_tolerance 0.001
    set hidden_capacitance_relative_tolerance 0.01
    set hidden_power_absolute_tolerance 0.01
    set hidden_power_relative_tolerance 0.1
    set hold_absolute_tolerance 0.02
    set hold_product_tolerance 0.0
    set hold_relative_tolerance 0.05
    set hyperbolic_noise_absolute_tolerance 0.0
    set hyperbolic_noise_product_tolerance 0.0
    set hyperbolic_noise_relative_tolerance 0.0
    set index_relative_tolerance 0.01
    set input_capacitance_absolute_tolerance 0.001
    set input_capacitance_product_tolerance 0.0
    set input_capacitance_relative_tolerance 0.01
    set intrinsic_resistance_absolute_tolerance 0.001
    set intrinsic_resistance_relative_tolerance 0.01
    set kurtosis_delay_absolute_tolerance 0.005
    set kurtosis_delay_relative_tolerance 0.05
    set kurtosis_slew_absolute_tolerance 0.005
    set kurtosis_slew_relative_tolerance 0.05
    set leakage_absolute_tolerance 0.002
    set leakage_product_tolerance 0.0
    set leakage_relative_tolerance 0.02
    set lte_enable_finesim 0
    set lte_post_thermal_analysis 0
    set lte_worst_arc_mode 0
    set ltedev_ccdb_enablement 0
    set lvf_check_constraint_early_to_late_tol 0.0
    set lvf_check_constraint_sigma_pct {}
    set lvf_check_errors {0 1 2 3 5 9 10 14}
    set lvf_check_last_index 1
    set lvf_check_normalized_constraint_sigma_tol 0.25
    set lvf_check_normalized_delay_sigma_tol 0.25
    set lvf_check_normalized_slew_sigma_tol 0.25
    set lvf_check_output_log 0
    set lvf_check_sigma_pct {}
    set lvf_check_slew_sigma_pct {}
    set lvf_check_suppress 19
    set lvf_constraint_check_errors {0 1 2 3 9 10 11}
    set lvf_constraint_check_suppress {4 11 19}
    set lvf_delay_check_suppress {}
    set lvf_mean_shift_check_suppress {}
    set lvf_moment_check_suppress {}
    set lvf_sigma_check_suppress {}
    set lvf_skewness_check_suppress {}
    set lvf_slew_check_suppress {}
    set lvf_std_dev_check_suppress {}
    set max_toggle_rate_absolute_tolerance 1.0
    set max_toggle_rate_relative_tolerance 0.1
    set mean_shift_constraint_absolute_tolerance 0.005
    set mean_shift_constraint_relative_tolerance 0.05
    set mean_shift_delay_absolute_tolerance 0.005
    set mean_shift_delay_relative_tolerance 0.05
    set mean_shift_hold_absolute_tolerance 0.005
    set mean_shift_hold_relative_tolerance 0.05
    set mean_shift_mpw_absolute_tolerance 0.005
    set mean_shift_mpw_relative_tolerance 0.05
    set mean_shift_non_seq_hold_absolute_tolerance 0.005
    set mean_shift_non_seq_hold_relative_tolerance 0.05
    set mean_shift_non_seq_setup_absolute_tolerance 0.005
    set mean_shift_non_seq_setup_relative_tolerance 0.05
    set mean_shift_recovery_absolute_tolerance 0.005
    set mean_shift_recovery_relative_tolerance 0.05
    set mean_shift_removal_absolute_tolerance 0.005
    set mean_shift_removal_relative_tolerance 0.05
    set mean_shift_setup_absolute_tolerance 0.005
    set mean_shift_setup_relative_tolerance 0.05
    set mean_shift_slew_absolute_tolerance 0.005
    set mean_shift_slew_relative_tolerance 0.05
    set min_period_absolute_tolerance 0.015
    set min_period_relative_tolerance 0.0
    set mpw_absolute_tolerance 0.02
    set mpw_product_tolerance 0.04
    set mpw_relative_tolerance 0.05
    set ndw_absolute_tolerance 0.005
    set ndw_relative_tolerance 0.02
    set nochange_absolute_tolerance 0.015
    set nochange_product_tolerance 0.0
    set nochange_relative_tolerance 0.04
    set noise_immunity_absolute_tolerance 0.0
    set noise_immunity_product_tolerance 0.0
    set noise_immunity_relative_tolerance 0.0
    set noise_iv_absolute_tolerance 0.0
    set noise_iv_product_tolerance 0.0
    set noise_iv_relative_tolerance 0.0
    set noise_prop_absolute_tolerance 0.0
    set noise_prop_height_absolute_tolerance 0.0
    set noise_prop_height_relative_tolerance 0.0
    set noise_prop_product_tolerance 0.0
    set noise_prop_relative_tolerance 0.0
    set noise_prop_width_absolute_tolerance 0.0
    set noise_prop_width_relative_tolerance 0.0
    set non_seq_hold_absolute_tolerance 0.015
    set non_seq_hold_relative_tolerance 0.04
    set non_seq_setup_absolute_tolerance 0.015
    set non_seq_setup_relative_tolerance 0.04
    set path_corr_bundle_path_size 500
    set path_corr_driver_chain_length 1
    set path_corr_driver_input {}
    set path_corr_driver_output {}
    set path_corr_dump_csv 0
    set path_corr_leaf_cell_fanout 1
    set path_corr_leafcell_input {}
    set path_corr_leafcell_output {}
    set path_corr_load_indices {}
    set path_corr_pt_clock_period 10
    set path_corr_pt_config_file {}
    set path_corr_pt_shell {}
    set path_corr_r_pi_rc_network 100.0
    set path_corr_slew_indices {}
    set path_corr_tol {delay 0.02 0.005ns slew 0.03 0.0075ns}
    set power_corr_bundle_size 1
    set power_corr_lc_shell {}
    set power_corr_load_indices {}
    set power_corr_pt_shell {}
    set power_corr_reset_job_after_cfg 0
    set power_corr_slew_indices {}
    set power_corr_tol {0.00 0.000}
    set power_validate_leakage_opc_process {}
    set power_validate_opc_process {}
    set product_tolerance 0.0
    set qualification_10nm_mode 0
    set qualification_aocv_dir {}
    set qualification_cleanup 1
    set qualification_data_range {}
    set qualification_finesim {}
    set qualification_hspice {}
    set qualification_lc_options {}
    set qualification_lc_shell {}
    set qualification_lc_suppress {}
    set qualification_pt_shell {}
    set qualification_running_update 0
    set qualification_scaling_group {}
    set qualification_tol {}
    set recovery_absolute_tolerance 0.02
    set recovery_product_tolerance 0.0
    set recovery_relative_tolerance 0.05
    set relative_tolerance 0.0
    set removal_absolute_tolerance 0.02
    set removal_product_tolerance 0.0
    set removal_relative_tolerance 0.05
    set resistance_absolute_tolerance 0.001
    set resistance_relative_tolerance 0.01
    set resolve_internal_pins 0
    set retain_slew_absolute_tolerance 0.0
    set retain_slew_product_tolerance 0.0
    set retain_slew_relative_tolerance 0.0
    set retaining_absolute_tolerance 0.0
    set retaining_product_tolerance 0.0
    set retaining_relative_tolerance 0.0
    set rv_archive 1
    set rv_cmax_bisection_method 1
    set rv_config_file {}
    set rv_debug_mode 0
    set rv_log_statistics 0
    set rv_output_slope_check 0
    set rv_simulator customsim
    set rv_simulator_cmd {}
    set rv_skip_extra_output_transition_check 0
    set rv_slew 1e-11
    set rvchar_cmax 0.0
    set rvchar_cmin 0.0
    set rvchar_maxFreq 0.0
    set rvchar_minFreq 0.0
    set rvcheck_ctarget 1e-10
    set rvcheck_frequency 1000000000.0
    set rvcheck_slew 1e-11
    set sdf_source_tool_cmd {talus [get_parameter validation generate_sdf_cmd_file]}
    set setup_absolute_tolerance 0.02
    set setup_product_tolerance 0.0
    set setup_relative_tolerance 0.05
    set sigma_constraint_absolute_tolerance 0.005
    set sigma_constraint_relative_tolerance 0.05
    set sigma_delay_absolute_tolerance 0.005
    set sigma_delay_early_absolute_tolerance 0.005
    set sigma_delay_early_relative_tolerance 0.05
    set sigma_delay_late_absolute_tolerance 0.005
    set sigma_delay_late_relative_tolerance 0.05
    set sigma_delay_relative_tolerance 0.05
    set sigma_hold_absolute_tolerance 0.005
    set sigma_hold_relative_tolerance 0.05
    set sigma_mpw_absolute_tolerance 0.005
    set sigma_mpw_relative_tolerance 0.05
    set sigma_non_seq_hold_absolute_tolerance 0.005
    set sigma_non_seq_hold_relative_tolerance 0.05
    set sigma_non_seq_setup_absolute_tolerance 0.005
    set sigma_non_seq_setup_relative_tolerance 0.05
    set sigma_recovery_absolute_tolerance 0.005
    set sigma_recovery_relative_tolerance 0.05
    set sigma_removal_absolute_tolerance 0.005
    set sigma_removal_relative_tolerance 0.05
    set sigma_setup_absolute_tolerance 0.005
    set sigma_setup_relative_tolerance 0.05
    set sigma_slew_absolute_tolerance 0.005
    set sigma_slew_early_absolute_tolerance 0.005
    set sigma_slew_early_relative_tolerance 0.05
    set sigma_slew_late_absolute_tolerance 0.005
    set sigma_slew_late_relative_tolerance 0.05
    set sigma_slew_relative_tolerance 0.05
    set skew_constraint_absolute_tolerance 0.005
    set skew_constraint_relative_tolerance 0.05
    set skew_delay_absolute_tolerance 0.005
    set skew_delay_relative_tolerance 0.05
    set skew_hold_absolute_tolerance 0.005
    set skew_hold_relative_tolerance 0.05
    set skew_mpw_absolute_tolerance 0.005
    set skew_mpw_relative_tolerance 0.05
    set skew_recovery_absolute_tolerance 0.005
    set skew_recovery_relative_tolerance 0.05
    set skew_removal_absolute_tolerance 0.005
    set skew_removal_relative_tolerance 0.05
    set skew_setup_absolute_tolerance 0.005
    set skew_setup_relative_tolerance 0.05
    set skew_slew_absolute_tolerance 0.005
    set skew_slew_relative_tolerance 0.05
    set skewness_constraint_absolute_tolerance 0.005
    set skewness_constraint_relative_tolerance 0.05
    set skewness_delay_absolute_tolerance 0.005
    set skewness_delay_relative_tolerance 0.05
    set skewness_hold_absolute_tolerance 0.005
    set skewness_hold_relative_tolerance 0.05
    set skewness_mpw_absolute_tolerance 0.005
    set skewness_mpw_relative_tolerance 0.05
    set skewness_non_seq_hold_absolute_tolerance 0.005
    set skewness_non_seq_hold_relative_tolerance 0.05
    set skewness_non_seq_setup_absolute_tolerance 0.005
    set skewness_non_seq_setup_relative_tolerance 0.05
    set skewness_recovery_absolute_tolerance 0.005
    set skewness_recovery_relative_tolerance 0.05
    set skewness_removal_absolute_tolerance 0.005
    set skewness_removal_relative_tolerance 0.05
    set skewness_setup_absolute_tolerance 0.005
    set skewness_setup_relative_tolerance 0.05
    set skewness_slew_absolute_tolerance 0.005
    set skewness_slew_relative_tolerance 0.05
    set slew_absolute_tolerance 0.005
    set slew_product_tolerance 0.0
    set slew_relative_tolerance 0.05
    set slew_sensitivity_absolute_tolerance 0.0
    set slew_sensitivity_product_tolerance 0.0
    set slew_sensitivity_relative_tolerance 0.0
    set slew_variance_absolute_tolerance 0.0
    set slew_variance_product_tolerance 0.0
    set slew_variance_relative_tolerance 0.0
    set stat_hold_margin_check_libs {}
    set stat_hold_margin_check_margins {0.0 0.0}
    set stat_hold_margin_check_reduction_arcs {}
    set stat_hold_margin_check_tolerance 5e-06
    set std_dev_constraint_absolute_tolerance 0.005
    set std_dev_constraint_relative_tolerance 0.05
    set std_dev_delay_absolute_tolerance 0.005
    set std_dev_delay_relative_tolerance 0.05
    set std_dev_hold_absolute_tolerance 0.005
    set std_dev_hold_relative_tolerance 0.05
    set std_dev_mpw_absolute_tolerance 0.005
    set std_dev_mpw_relative_tolerance 0.05
    set std_dev_non_seq_hold_absolute_tolerance 0.005
    set std_dev_non_seq_hold_relative_tolerance 0.05
    set std_dev_non_seq_setup_absolute_tolerance 0.005
    set std_dev_non_seq_setup_relative_tolerance 0.05
    set std_dev_recovery_absolute_tolerance 0.005
    set std_dev_recovery_relative_tolerance 0.05
    set std_dev_removal_absolute_tolerance 0.005
    set std_dev_removal_relative_tolerance 0.05
    set std_dev_setup_absolute_tolerance 0.005
    set std_dev_setup_relative_tolerance 0.05
    set std_dev_slew_absolute_tolerance 0.005
    set std_dev_slew_relative_tolerance 0.05
    set steady_state_current_absolute_tolerance 0.04
    set steady_state_current_relative_tolerance 0.01
    set structural_index_relative_tolerance 0.01
    set switching_capacitance_absolute_tolerance 0.001
    set switching_capacitance_relative_tolerance 0.01
    set switching_power_absolute_tolerance 0.01
    set switching_power_relative_tolerance 0.1
    set time_absolute_tolerance 0.0
    set time_relative_tolerance 0.0
    set validation_ccsn_threshold_high 100.0
    set validation_ccsn_threshold_low 0.0
    set wcps_frequency 1000000000.0
    set wcps_load 1e-10
    set wcps_slew 1e-11
    set zdis_absolute_tolerance 0.005
    set zdis_product_tolerance 0.0
    set zdis_relative_tolerance 0.05
    set zen_absolute_tolerance 0.005
    set zen_product_tolerance 0.0
    set zen_relative_tolerance 0.05
}

# Liberty attributes set by user
# Liberty attributes cleared by user

#Operating conditions

create_operating_condition op_cond
add_opc_supplies op_cond VSS 0.0 VDD 1.2

## 
## User-specified characterization and modeling configuration options.
## 

create_parameter cdpl_log_subdir
set_config_opt -- cdpl_log_subdir pid31155

create_parameter configure_arc_based
set_config_opt -cell nor3 -- configure_arc_based 0

create_parameter configure_disable_asynch_pins_initialization
set_config_opt -- configure_disable_asynch_pins_initialization 0

create_parameter default_combine_timing_and_power
set_config_opt -- default_combine_timing_and_power 1

create_parameter is_char_mode
set_config_opt -- is_char_mode 1

create_parameter seed_simulator_version_info
set_config_opt -- seed_simulator_version_info O-2018.09-2

create_parameter simulator_version_info
set_config_opt -- simulator_version_info O-2018.09-2

create_parameter slew_derate_lower_threshold
set_config_opt -- slew_derate_lower_threshold 0.1

create_parameter slew_derate_upper_threshold
set_config_opt -- slew_derate_upper_threshold 0.9

create_parameter source_from_instance
set_config_opt -- source_from_instance {}

log_info "[clock format [clock seconds]]: Environment set up done ([expr [clock seconds] - $t0] seconds)"
} err ] } {

  # Connect back to the server to send err message.
  catch {if {[string length $err] > 0} {log_error $err}}
  if {[catch {
    startCdplWorker $err
  } err]} {exit 2}
  exit 0
}

