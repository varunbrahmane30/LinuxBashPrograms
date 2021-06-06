  
#!/bin/bash

if [ -d original,updated ]
then
	echo "folder is already present"
else
	mkdir original updated
fi

cp original-file.sh original/
cp updated-file.sh updated/

diff original updated

diff original original-backup/

