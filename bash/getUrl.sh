while IFS= read -r line; do node /home/desjardins/permanent/public/js/index.js "$line"; done < $1 > file.tmp && mv -- file.tmp $1
