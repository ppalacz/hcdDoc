rem Create a PUML file for a given json file in the arg
set JSON=%1
set BASE=%~n1
set PEXT=puml
set PRE=@startjson
set POST=@endjson
set TARGET=%BASE%.%PEXT%
echo "JSON: " %JSON%
echo "BASE: " %BASE%
echo "PEXT: " %PEXT%
echo "TARGET: " %TARGET%

echo %PRE% >> %TARGET%
type %JSON% >> %TARGET%
echo %POST% >> %TARGET%

dir %BASE%.*
