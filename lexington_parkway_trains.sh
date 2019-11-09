while true; do
  i=$(curl -s https://svc.metrotransit.org/NexTrip/902/2/LXUN\?format\=json  | jq -r '.[] | "\(.DepartureText)"')
  j=$(curl -s https://svc.metrotransit.org/NexTrip/902/3/LXUN\?format\=json  | jq -r '.[] | "\(.DepartureText)"')
  clear;
  echo "LEXINGTON PKWY STATION\n~~~~~~~~~~~~~~~~~~~~~~\nEASTBOUND\n=========\n$i\n\nWESTBOUND\n=========\n$j" | lolcat -a -d 1 -S 100
  sleep 30;
done
