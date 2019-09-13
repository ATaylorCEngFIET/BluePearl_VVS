BPS::clear_packages -confirm=1
BPS::clear_all_design_signoff_checklists -confirm=1

BPS::add_package {Adiuvo_Package}
BPS::create_design_signoff_checklist -checklist {Adiuvo CL}
BPS::add_extrainfo_package {ACS} -check_package_name {Adiuvo_Package} -msgprefix {Adv}

BPS::set_report -all false
BPS::set_check_enabled * -enabled false
BPS::clear_log_package_summary
BPS::set_memorystateinterval 0
BPS::reset_naming_options

BPS::set_check_enabled SLCC -enabled true
BPS::add_check_to_package   -check SLCC {Adiuvo_Package}
BPS::add_check_to_checklist -check SLCC -checklist {Adiuvo CL}
BPS::add_message_criterion_to_checklist -checklist {Adiuvo CL} -msgid BPS-0040 -range {1}
BPS::set_check_extrainfo SLCC -text {Adv-01} -package {ACS}
BPS::set_message_extrainfo BPS-0040 -text {Adv-01} -package {ACS}
BPS::set_msg_check_package {ACS}