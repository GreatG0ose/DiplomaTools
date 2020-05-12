@ECHO=OFF
set target=project
set aggpath=../..

start cmd /k call %aggpath%/link-agg build/doc/links.txt *go https://github.com/GreatG0ose/DiplomaTools/tree/master/examples/aggreagator/

start cmd /k call %aggpath%/src-agg build/doc/src.txt *go