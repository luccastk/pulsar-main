@echo off
echo.
echo ========================================
echo       INICIANDO AMBIENTE COMPLETO
echo ========================================
echo.

set EUREKA=..\docker-eureka\docker-compose.eureka-dev.yml
set GATEWAY=..\docker-gateway\docker-compose.gateway-dev.yml
set KAFKA=..\docker-kafka\docker-compose.kafka-dev.yml
set SERVICE_FILE=..\docker-services\docker-compose.services-dev.yml

docker compose ^
	-p complet-stack ^
	--env-file ..\.env ^
	-f %EUREKA% ^
	-f %GATEWAY% ^
	-f %KAFKA% ^
	-f %SERVICE_FILE% ^
	up --no-build -d

echo Servicos iniciados...

pause