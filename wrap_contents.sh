#!bin/bash

$1=contentsFile
$2=desiredHeaderFoot
$3=resultFile

##cd ./simple_example
##echo "hi"
{cat $desiredHeaderFoot"_header.html" $contentsFile $desiredHeaderFoot"_footer.html"} = finalfile

## to check if file exits in bash credit
## https://stackoverflow.com/questions/638975/how-do-i-tell-if-a-regular-file-does-not-exist-in-bash

if [ -f $resultFile ]; then
	cp -f $finalfile $resultFile
else
	touch $resultFile
	cp -f $finalfile $resultFile
fi
