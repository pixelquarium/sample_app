NANO_VERSION="2.2.6"
curl -O http://www.nano-editor.org/dist/v2.2/NT/nano-$NANO_VERSION.zip
mkdir -p share/nano 
unzip nano-$NANO_VERSION.zip -d share/nano 
printf '#!/bin/bash \nexec /share/nano/nano.exe "$@"' > bin/nano 
chmod +x bin/nano
echo -e "Nano installed, enjoy!"