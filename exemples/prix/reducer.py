#!/usr/bin/env python

import sys

last_key = None
running_total = 0
count = 0

for input_line in sys.stdin:
    input_line = input_line.strip()
    this_key, value = input_line.split("\t", 1)
    value = float(value)

    if last_key == this_key:
        running_total += value
        count += 1
    else:
        if last_key:
            print( "%s\t%.2f" % (last_key, running_total/count) )
        running_total = value
        count = 1
        last_key = this_key

if last_key == this_key:
    print( "%s\t%.2f" % (last_key, running_total/count) )
