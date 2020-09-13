

days=200
total_commit=600
size=$((days*24*60))
a=$(shuf -i 1-$size -n $total_commit | sort -r -n)
git checkout -b gh-pages
for i in ${a}
do 
git commit --allow-empty -m "Commit"
git commit --amend --allow-empty --no-edit --date "$(date -d "-$i minutes")"
done 
git push origin gh-pages
git checkout master