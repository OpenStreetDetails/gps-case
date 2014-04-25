NAMES="case_back case_base case_lid chip_support jumper_grip"
for name in ${NAMES[@]}
do
  echo "${name}..."
  OpenSCAD -o ${name}.stl ${name}.scad
  OpenSCAD --render -o doc/${name}.png ${name}.scad
done

echo "Built."
