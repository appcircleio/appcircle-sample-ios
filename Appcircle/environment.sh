FILE="$1"

if [ ! -f "$FILE" ]; then
    echo ".xcconfig file not found!"
    exit 0;
fi

KEY_ARRAY=()
while IFS= read -r line; do
	if [[ $line != //* ]] && [[ $line == *"="* ]]; then
		IFS=' = ' read -r -a array <<< "$line"
		KEY_ARRAY+=("${array[0]}")
	fi
done < "$FILE"

for i in "${KEY_ARRAY[@]}"
do
   if [ -n "${!i}" ]; then
   	echo "Key : ${i}"
   	echo "Value : ${!i}"
   	sed -i '' "s/\(^${i}=\).*/\1${!i}/" "$FILE"
   fi
done
exit 0;