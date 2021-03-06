#!/bin/sh
echo Building x64
gcc -m64 -shared -fPIC -O -DNDEBUG -DSQLITE_DEFAULT_FOREIGN_KEYS=1 -DSQLITE_ENABLE_FTS3_PARENTHESIS -DSQLITE_ENABLE_FTS4 -DSQLITE_ENABLE_COLUMN_METADATA -DSQLITE_ENABLE_JSON1 -DSQLITE_ENABLE_RTREE -o x64/libe_sqlite3.so ../sqlite3/sqlite3.c 
echo Building x86
gcc -m32 -shared -fPIC -O -DNDEBUG -DSQLITE_DEFAULT_FOREIGN_KEYS=1 -DSQLITE_ENABLE_FTS3_PARENTHESIS -DSQLITE_ENABLE_FTS4 -DSQLITE_ENABLE_COLUMN_METADATA -DSQLITE_ENABLE_JSON1 -DSQLITE_ENABLE_RTREE -o x86/libe_sqlite3.so ../sqlite3/sqlite3.c 
echo Done
