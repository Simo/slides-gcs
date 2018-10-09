#!/bin/bash
set -e

export http_proxy=http://proxy-bc.insiel.it:8046
export https_proxy=http://proxy-bc.insiel.it:8046

exec git clone https://github.com/Simo/slides-cgs
exec ln -s /slides-cgs/index.html /var/www/html/

/usr/sbin/httpd