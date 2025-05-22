#!/bin/sh
data() {
echo "<html><head></head><body><h1>"; date;echo "Hello World</h1></body></html>"
sleep 1
}
while true; do
data > index.html
done
