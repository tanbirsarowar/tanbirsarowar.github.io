@echo off
REM ─────────────────────────────────────────────────────────────────────────
REM  Portfolio Figure Setup Script
REM  Run this from the portfolio\ directory to copy simulation figures
REM  from wafer_chuck_sim into assets/img/ for GitHub Pages deployment.
REM ─────────────────────────────────────────────────────────────────────────

set SRC=..\wafer_chuck_sim\figures
set DST=assets\img

mkdir %DST%\sim 2>nul

echo Copying simulation figures...

copy "%SRC%\comparison\02_force_traces.png"              "%DST%\sim\force_traces.png"
copy "%SRC%\comparison\04_contact_fraction.png"          "%DST%\sim\contact_fraction.png"
copy "%SRC%\comparison\03_centre_gap.png"                "%DST%\sim\centre_gap.png"
copy "%SRC%\comparison\05_dechuck_zoom.png"              "%DST%\sim\dechuck_zoom.png"
copy "%SRC%\comparison\06_gbir_summary.png"              "%DST%\sim\gbir_summary.png"
copy "%SRC%\grooved_chuck\01_chuck_geometry.png"         "%DST%\sim\chuck_geometry.png"
copy "%SRC%\grooved_chuck\04_contact_evolution.png"      "%DST%\sim\contact_evolution.png"
copy "%SRC%\grooved_chuck\05_force_traces.png"           "%DST%\sim\force_traces_grooved.png"
copy "%SRC%\grooved_chuck\07_deflection_final.png"       "%DST%\sim\deflection_final.png"
copy "%SRC%\1D\comparison_surface_states.png"            "%DST%\sim\surface_states.png"
copy "%SRC%\1D\comparison_bow_values.png"                "%DST%\sim\bow_values.png"
copy "%SRC%\port_modes\03_pressure_fields.png"           "%DST%\sim\pressure_fields.png"
copy "%SRC%\port_modes\04_contact_maps.png"              "%DST%\sim\contact_maps.png"
copy "%SRC%\port_modes\06_summary.png"                   "%DST%\sim\port_summary.png"
copy "%SRC%\2d\09_bow_vs_saddle_contact.png"             "%DST%\sim\bow_vs_saddle.png"
copy "%SRC%\robustness\01_grid_independence.png"         "%DST%\sim\grid_independence.png"

echo.
echo Done! Figures copied to %DST%\sim\
echo.
echo Next steps for GitHub Pages:
echo   1. Create a GitHub repo named:  yourusername.github.io
echo   2. Copy the entire portfolio\ folder into the repo
echo   3. Push to GitHub:  git add . && git commit -m "Portfolio" && git push
echo   4. Go to repo Settings → Pages → select main branch → Save
echo   5. Your site will be live at:   https://yourusername.github.io
echo.
pause
