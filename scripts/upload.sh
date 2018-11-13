#!/bin/sh
from="./*"
to="/var/www/malura/files/presentations/silver-reverse-engineering-presentation/"
host="hetzner_websites_cx20"

# upload page
rsync -vrha  --exclude "scripts" --exclude ".git" $from $host:$to

ssh $host "chown -R root:www-data $to"
ssh $host "chmod -R 750 $to"
