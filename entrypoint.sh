EXTERNAL_ID=$(curl http://icanhazip.com)
echo "Using external IP: $EXTERNAL_ID"

/usr/bin/turnserver -n --log-file stdout -u kurento:kurento -f -v --external-ip $EXTERNAL_ID
