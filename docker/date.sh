#!/bin/bash
echo `date` $@ >> log.txt;
cat log.txt;
#save as date.sh set chmod 777 script