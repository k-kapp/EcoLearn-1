count=0

if [ "$1" == "" ] || [ "$2" == "" ]; then
	echo "Usage: canopy_placement_mass.sh <base dirname> <ndirs>"
	exit 1
fi

base_dirname=$1
ndirs=$2

dbname="/home/konrad/EcoSynth/data_preproc/common_data/sonoma.db"

for count in $(eval echo "{0..$(($ndirs - 1))}"); do
	dirname="$base_dirname$count"
	/home/konrad/EcoSynth/data_preproc/build-default/canopy_placement/canopy_placement "$dirname" "$dbname"
done
