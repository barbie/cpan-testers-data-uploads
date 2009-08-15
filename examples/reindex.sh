#!/usr/bin/bash

BASE=/opt/projects/cpantesters

cd $BASE/uploads
mkdir -p logs
mkdir -p data

date_format="%Y/%m/%d %H:%M:%S"
echo `date +"$date_format"` "START" >>logs/uploads.log

perl bin/uploads.pl --config=data/uploads.ini -r >>logs/uploads.log 2>&1

echo `date +"$date_format"` "STOP" >>logs/uploads.log
