
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name passwordChecker -dir "C:/Users/naraw/Downloads/LAB06/LAB06/passwordChecker/planAhead_run_1" -part xc6slx9tqg144-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/naraw/Downloads/LAB06/LAB06/passwordChecker/mainControl.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/naraw/Downloads/LAB06/LAB06/passwordChecker} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "mainControl.ucf" [current_fileset -constrset]
add_files [list {mainControl.ucf}] -fileset [get_property constrset [current_run]]
link_design
