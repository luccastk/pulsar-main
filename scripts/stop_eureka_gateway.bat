@echo off
echo.
echo ========================================
echo     PARANDO TUDO + REMOVENDO VOLUMES
echo ========================================
echo.

set EUREKA=..\docker-eureka\docker-compose.eureka-dev.yml
set GATEWAY=..\docker-gateway\docker-compose.gateway-dev.yml

docker compose -p dev down -v
echo.
echo Tudo parado e volumes removidos.
pause
