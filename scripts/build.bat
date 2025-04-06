@echo off
echo.
echo ========================================
echo       BUILDANDO AMBIENTE COMPLETO
echo ========================================
echo.

docker compose ^
	-p complet-stack ^
	--env-file ..\.env ^
	-f ..\docker-eureka\docker-compose.eureka-dev.yml ^
	-f ..\docker-gateway\docker-compose.gateway-dev.yml ^
	-f ..\docker-kafka\docker-compose.kafka-dev.yml ^
	-f ..\docker-services\docker-compose.services-dev.yml ^
	up --build -d

echo Servicos iniciados...

pause