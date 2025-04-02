@echo off
echo.
echo ========================================
echo     PARANDO TUDO + REMOVENDO VOLUMES
echo ========================================
echo.

set EUREKA=..\docker-eureka\docker-compose.eureka-dev.yml
set GATEWAY=..\docker-gateway\docker-compose.gateway.yml

REM Derrubando containers e volumes
docker compose -f %EUREKA% -f %GATEWAY% down -v

echo.
echo ✅ Tudo parado e volumes removidos.
pause