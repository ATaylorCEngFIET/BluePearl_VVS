################################################
# Automatically created by Blue Pearl Visual Verification Suite Version 2019.1.53518 06/15/2019 18:45. Windows (64-bit). on Thu Sep 12 10:15:17 2019
################################################
##
#Exit Code:
#   0: Success
# 102: Command returned a TCL Error
##
if {[catch {BPS::run load} runOK] } {
    set exitCode 102
} else { #no exception thrown in command
    if { $runOK } {
        set exitCode 0
    } else {
        set exitCode 102
    }
}
if {$exitCode != 0} {
    puts "Warning: Results from BPS::run '$runOK'"
    puts "Warning: Command returned an error, please see messages above for more detail."
}
exit $exitCode

