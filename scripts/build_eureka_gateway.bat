@echo off
echo.
echo ========================================
echo 	  INICIANDO EUREKA + GATEWAY
echo ========================================
echo.

set EUREKA=..\docker-eureka\docker-compose.eureka-dev.yml
set GATEWAY=..\docker-gateway\docker-compose.gateway.yml

docker compose --env-file ../.env -f %GATEWAY% -f %EUREKA% up -d --build

echo.
echo Docker Compose iniciado com sucesso.
pause