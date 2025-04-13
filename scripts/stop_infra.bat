@echo off
echo.
echo ========================================
echo     PARANDO INFRA + REMOVENDO VOLUMES
echo ========================================
echo.

set INFRA=..\docker-infra\docker-compose.infra-dev.yml

REM Derrubando containers e volumes
docker compose -p dev ^
	--env-file ..\.env ^
	-f %INFRA% ^
	 down -v 

echo.
echo ✅ Tudo parado e volumes removidos.
pause