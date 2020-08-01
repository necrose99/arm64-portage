#!/bin/sh 
#./bgebuildr to run in background
## ssh and fire up if disconected it will keep going. 
## else  also cronjob.. builds world binaries when posible but dose not yet merge them.. 

nohup ebuildr > /dev/null 2>&1 &