@ECHO off
REN _Transcendence.tdb Transcendence.tdb
IF NOT EXIST _TDB (MD _TDB)
TransCompiler.exe /input:OPS_Lib_Core.xml /output:_TDB/OPS_LibResOsaka.tdb
TransCompiler.exe /input:OPS_Extension.xml /output:_TDB/OPS_ExtOsaka.tdb /entities:_TDB/OPS_LibResOsaka.tdb
REN Transcendence.tdb _Transcendence.tdb
@ECHO on