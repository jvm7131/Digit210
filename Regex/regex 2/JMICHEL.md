# Title

Text
find: '^(.+)$'

replace: '<line>\1</line>'

find: '<line>(\S+)</line>'

replace:'</sonnet>  
<sonnet num=”\1”>'


find:'.+ '
replace: '<xml>\0</xml>'