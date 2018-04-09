#!/bin/bash

ag -i '\{[^{]*\boccurrence\W+'"$1"'[^}]*\}' /home/sixtease/skola/phd/webapp/MakonFM/root/static/subs/*.sub.js /home/sixtease/skola/phd/webapp/MakonFM/root/static/subs/prevzate/*.sub.js
