

# echo "${array[0]}"
folder_name=$1
number_of_split=$2
value=$(ls $folder_name )
IFS=' ' read -r -a array <<< $value
lenofall=${#array[*]}
max_len_per_folder=$((lenofall/number_of_split+1))
echo $max_len_per_folder

for (( c=1; c<=$number_of_split; c++ ))
do
	if [ ! -d Truong_$c ]
	then
		mkdir Truong_$c
	fi
    value=$(ls $folder_name )
    IFS=' ' read -r -a array <<< $value
    counter=0
    echo $c
    for element in "${array[@]}"
    do
        ((counter=counter+1))
        # echo $counter -eq $max_len_per_folder 
        if [ $counter -eq $max_len_per_folder ];
        then 
            break
        fi

	    mv $folder_name/"$element" Truong_$c
    done
done
