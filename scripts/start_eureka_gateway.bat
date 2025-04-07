@echo off
echo.
echo ========================================
echo 	  INICIANDO EUREKA + GATEWAY
echo ========================================
echo.

set EUREKA=..\docker-eureka\docker-compose.eureka-dev.yml
set GATEWAY=..\docker-gateway\docker-compose.gateway-dev.yml

docker compose -p kit-start-dev --env-file ../.env -f %GATEWAY% -f %EUREKA% up -d --no-build

echo.
echo Docker Compose iniciado com sucesso.
pause
