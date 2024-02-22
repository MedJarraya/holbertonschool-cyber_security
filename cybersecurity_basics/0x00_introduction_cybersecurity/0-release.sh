# Get distributor ID
distributor_id=$(lsb_release -si 2>/dev/null)

if [ $? -eq 0 ]; then
    echo $distributor_id
else
    echo "lsb_release command not found. Unable to determine Distributor ID."
fi
