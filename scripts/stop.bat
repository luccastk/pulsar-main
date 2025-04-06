@echo off
echo.
echo ========================================
echo     PARANDO TUDO + REMOVENDO VOLUMES
echo ========================================
echo.

set EUREKA=..\docker-eureka\docker-compose.eureka-dev.yml
set GATEWAY=..\docker-gateway\docker-compose.gateway-dev.yml
set KAFKA=..\docker-kafka\docker-compose.kafka-dev.yml
set SERVICE_FILE=..\docker-services\docker-compose.services-dev.yml

REM Derrubando containers e volumes
docker compose -p complet-stack ^
	--env-file ..\.env ^
	-f %EUREKA% ^
	-f %GATEWAY% ^
	-f %KAFKA% ^
	-f %SERVICE_FILE% ^
	 down -v 

echo.
echo ✅ Tudo parado e volumes removidos.
pause