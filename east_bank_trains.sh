while true; do
  i=$(curl -s https://svc.metrotransit.org/NexTrip/902/2/EABK\?format\=json  | jq -r '.[] | "\(.DepartureText)"')
  j=$(curl -s https://svc.metrotransit.org/NexTrip/902/3/EABK\?format\=json  | jq -r '.[] | "\(.DepartureText)"')
  clear;
  echo "EAST BANK STATION\n~~~~~~~~~~~~~~~~~~\nEASTBOUND\n=========\n$i\n\nWESTBOUND\n=========\n$j" | lolcat -a -d 1 -S 15
  sleep 30;
done
