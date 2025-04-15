@echo off
echo.
echo ========================================
echo       BUILDANDO AMBIENTE COMPLETO
echo ========================================
echo.

REM :: Define a pasta onde o script está
set "SCRIPT_DIR=%~dp0"
cd /d "%SCRIPT_DIR%"

REM :: Agora tudo é baseado no caminho real
set KAFKA_FOLDER=%SCRIPT_DIR%..\docker-kafka\KAFKA
set KAFKA_DATA_FOLDER=%KAFKA_FOLDER%\data

if not exist "%KAFKA_DATA_FOLDER%" (
    mkdir "%KAFKA_DATA_FOLDER%"
    echo Pasta criada: %KAFKA_DATA_FOLDER%.
) else (
    echo Pasta já existe: %KAFKA_DATA_FOLDER%.
)

set INFRA=..\docker-infra\docker-compose.infra-dev.yml
set EUREKA=..\docker-eureka\docker-compose.eureka-dev.yml
set GATEWAY=..\docker-gateway\docker-compose.gateway-dev.yml
set KAFKA=..\docker-kafka\docker-compose.kafka-dev.yml
set SERVICES=..\docker-services\docker-compose.services-dev.yml

docker compose -p dev --env-file ..\.env ^
	-f %INFRA% ^
	-f %EUREKA% ^
        -f %GATEWAY% ^
        -f %KAFKA% ^
        -f %SERVICES% ^
        up --build -d

echo Serviços iniciados...
pause
