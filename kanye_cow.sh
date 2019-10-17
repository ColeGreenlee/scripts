while true; do
  i="$(curl https://api.kanye.rest/\?format\=text -s) -Kanye";
  clear;
  echo "$i" | cowsay;
  sleep 10;
done
