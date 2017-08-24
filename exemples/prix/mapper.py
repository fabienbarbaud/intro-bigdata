#!/usr/bin/env python

import sys

for line in sys.stdin:
    keys = line.split(',')
    key = keys[0].replace('"','')
    value = keys[3].replace('"','')
    if value != 'valeur' and value != '':
        print('%s\t%d' % (key, int(value)))
