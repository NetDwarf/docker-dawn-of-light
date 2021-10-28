#!/bin/sh

cp -f /dawn-of-light/dol.sqlite3.db /dawn-of-light/database/dol.sqlite3.db

sed -i \
    -e 's/protected static string UserName = "";/protected static string UserName = "'"${DOL_SANDBOX_SERVERUPDATE_USERNAME}"'";/' \
    -e 's/protected static string Password = "";/protected static string Password = "'"${DOL_SANDBOX_SERVERUPDATE_PASSWORD}"'";/' \
    /dawn-of-light/scripts/Utility/ServerListUpdate.cs

exec /entrypoint.sh
