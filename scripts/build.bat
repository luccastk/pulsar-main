@echo off
echo.
echo ========================================
echo       BUILDANDO AMBIENTE COMPLETO
echo ========================================
echo.

set KAFKA_FOLDER=..\docker-kafka\KAFKA

if not exist %KAFKA_FOLDER% (
	mkdir %KAFKA_FOLDER%\data
	echo Pasta criada; %KAFKA_FOLDER%.
)  else (
	echo Pasta já existe: %KAFKA_FOLDER%.
)

docker compose ^
	-p complet-stack ^
	--env-file ..\.env ^
	-f ..\docker-infra\docker-compose.infra-dev.yml ^
	-f ..\docker-eureka\docker-compose.eureka-dev.yml ^
	-f ..\docker-gateway\docker-compose.gateway-dev.yml ^
	-f ..\docker-kafka\docker-compose.kafka-dev.yml ^
	-f ..\docker-services\docker-compose.services-dev.yml ^
	up --build -d

echo Servicos iniciados...

pause