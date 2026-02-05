# Title
find: '&
'
replace:&amp;
amp;
 '
 find: '^.+ '
 
 replace: '<movie>\0</movie>'
 
 find:'
 (<movie>)(.+?)(\t)'
 
 replace:'\1<title>\2</title>'
 
 find: ' (</title>)(.+?)\t'
 
 replace:' \1<date>\2 </date>'
 
 find:' (</date>)(.+?)\t'
 
 replace:'\1<location>\2 </location>'
 
 find:'(</location>)(.+?)</movie>

replace:'\1<time>\2 </time></movie>
 
Text
