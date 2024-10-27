#!/bin/bash

# On teste les intervalles avec les conditions if elif else 

# < 5
# 5 - 10
# 10 - 15 
# 15 - 20 
# 20 > 
value=$1

echo 'Version 1'

if (( value < 5 ))
 then 
	echo '< 5'
elif (( value >=  5 && value < 10 ))
 then 
        echo '5 - 10'
elif (( value >=  10 && value < 15 ))
 then 
        echo '10 - 15'
elif (( value >=  15 && value < 20 ))
 then 
        echo '15 - 20'
else 
	echo '20 >'
fi

echo 'Version 2'

if [ $value -lt 5 ]
 then 
        echo '< 5'
elif [ $value -gt 5 ] || [ $value -eq 5  ] && [ $value -lt 10 ]
 then 
        echo '5 - 10'
elif [ $value -gt  10 ] || [ $value -eq 10  ] && [ $value -lt 15 ]
 then 
        echo '10 - 15'
elif [ $value -gt  15 ] || [ $value -eq 15 ] && [ $value -lt 20 ]
 then 
        echo '15 - 20'
else 
        echo '20 >'
fi

