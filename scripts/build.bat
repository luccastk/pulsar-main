@echo off
echo.
echo ========================================
echo       BUILDANDO AMBIENTE COMPLETO
echo ========================================
echo.

set KAFKA_FOLDER=..\docker-kafka\KAFKA

if not exist %KAFKA_FOLDER% (
        mkdir %KAFKA_FOLDER%\data
        echo Pasta criada: %KAFKA_FOLDER%.
)  else (
        echo Pasta já existe: %KAFKA_FOLDER%.
)

set INFRA=..\docker-infra\docker-compose.infra-dev.yml
set EUREKA=..\docker-eureka\docker-compose.eureka-dev.yml
set GATEWAY=..\docker-gateway\docker-compose.gateway-dev.yml
set KAFKA=..\docker-kafka\docker-compose.kafka-dev.yml
set SERVICES=..\docker-services\docker-compose.services-dev.yml

docker compose -p dev --env-file ..\.env ^
	-f %EUREKA% ^
        -f %GATEWAY% ^
        -f %KAFKA% ^
        -f %SERVICES% ^
	-f %INFRA% ^
        up --build -d

echo Serviços iniciados...
pause
