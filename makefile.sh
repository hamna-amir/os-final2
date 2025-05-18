#!/bin/bash
# Show OS logo only once
if [ -f ./oslogo.sh ]; then
  chmod +x ./oslogo.sh
  ./oslogo.sh
fi
echo "===== Initialize OS Resources ====="
read -p "Enter RAM size (in GB): " ram
read -p "Enter Hard Drive size (in GB): " hdd
read -p "Enter number of CPU cores: " cores
echo "==================================="
echo ""
PROGRAMS=("calculator" "calender" "clock" "create" "dealloc_resource" "delete" "exec" "frogger" "notepad" "os" "playmusic" "randomno" "rename" "sorting" "textgame" "tictactoe" "todolist" "unitconverter")

while true; do
echo "========== OS PROJECT MAIN MENU =========="
i=1
for prog in "${PROGRAMS[@]}"; do
echo "$i) $prog"
((i++))
done
echo "$i) Exit"
echo "=========================================="
read -p "Choose a number: " choice

if [[ $choice -ge 1 && $choice -le ${#PROGRAMS[@]} ]]; then
app=${PROGRAMS[$((choice-1))]}
script="welcome${app}.sh"

if [[ -f "$script" ]]; then
  chmod +x "$script"
  ./"$script"
else
  echo "No welcome script for $app"
fi

if [[ -f "./$app" ]]; then
  chmod +x "$app"
if [ "$app" = "os" ]; then
./"$app" "$ram" "$hdd" "$cores"
else
./"$app"
fi  
else
  echo "Executable $app not found."
fi

elif [[ $choice -eq $(( ${#PROGRAMS[@]} + 1 )) ]]; then
echo "Exiting... Goodbye!"
break
else
echo "Invalid choice. Try again."
fi

echo ""
done
