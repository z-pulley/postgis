REM $Id$
set PGPORT=5432
set PGHOST=localhost
set PGUSER=postgres
set PGPASSWORD=yourpasswordhere
set THEDB=geocoder
set PGBIN=C:\Program Files\PostgreSQL\8.4\bin
set PGCONTRIB=C:\Program Files\PostgreSQL\8.4\share\contrib
"%PGBIN%\psql"  -d "%THEDB%" -f "upgrade_geocode.sql"
"%PGBIN%\psql"  -d "%THEDB%" -f "tiger_loader_2011.sql"
cd regress
REM "%PGBIN%\psql"  -d "%THEDB%" -t -f regress.sql
pause

