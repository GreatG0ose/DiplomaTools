@ECHO=OFF
set target=project
set aggpath=../../aggregator.bat

%aggpath% build/doc/src.txt *go
