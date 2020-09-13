

days=600
total_commit=1000
size=$((days*24*60))
a=$(shuf -i 1-$size -n $total_commit | sort -r -n)
for i in ${a}
do 
git commit --allow-empty -m "Commit"
git commit --amend --allow-empty --no-edit --date "$(date -d "-$i minutes")"
done 
