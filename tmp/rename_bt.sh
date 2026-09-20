for file in *.pdf; do
    filename="${file%.pdf}"
    date_part="${filename:0:8}"

    if [[ "$date_part" =~ ^[0-9]{8}$ ]]; then
        day="${date_part:0:2}"
        month="${date_part:2:2}"
        year="${date_part:4:4}"

        month_name=$(date -d "$year-$month-$day" +"%B" 2>/dev/null)

        if [ $? -eq 0 ]; then
            new_name="india_today_${year}_${month_name}_${day}.pdf"

            mv -- "$file" "$new_name"

            echo "$file -> $new_name"
        fi
    fi
done
