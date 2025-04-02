@echo off
echo.
echo ========================================
echo 		     Purge
echo ========================================
echo.

set EUREKA=..\docker-eureka\docker-compose.eureka-dev.yml
set GATEWAY=..\docker-gateway\docker-compose.gateway.yml

docker compose --env-file ../.env -f %EUREKA% -f %GATEWAY% down --rmi all -v

echo.
echo Docker Compose iniciado com sucesso.
pause