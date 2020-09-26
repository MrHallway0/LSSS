#!/bin/sh
if  [[ $1 = "-p "* ]]; then
    # Package manager, not required currently
fi

if [[$2 = "-j "*]]; then
    # Server job.
    job=$2
    job=${job#*j }
    echo $job
fi    
