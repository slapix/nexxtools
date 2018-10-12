#!/bin/bash

FILE=/etc/config/wireless
echo "" >> $FILE
echo "config wifi-iface" >> $FILE
echo "  option device 'radio0'" >> $FILE
echo "  option mode 'sta'" >> $FILE
echo "  option ssid '$1'" >> $FILE
echo "  option network 'wwan'" >> $FILE
echo "  option encryption '$2'" >> $FILE
echo "  option key '$3'" >> $FILE
echo "  option disabled '0'" >> $FILE
echo "" >> $FILE

cat $FILE
