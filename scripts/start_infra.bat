@echo off
echo.
echo ========================================
echo       BUILDANDO INFRA
echo ========================================
echo.

set INFRA=..\docker-infra\docker-compose.infra-dev.yml
docker compose -p dev --env-file ..\.env ^
	-f %INFRA% ^
        up --build -d

echo Serviços iniciados...
pause
