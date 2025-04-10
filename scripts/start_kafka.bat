@echo off
echo.
echo ========================================
echo 	  	INICIANDO KAFKA
echo ========================================
echo.

set KAFKA_FOLDER=..\docker-kafka\KAFKA

if not exist %KAFKA_FOLDER% (
	mkdir %KAFKA_FOLDER%\data
	echo Pasta criada; %KAFKA_FOLDER%.
)  else (
	echo Pasta já existe: %KAFKA_FOLDER%.
)

set KAFKA=..\docker-kafka\docker-compose.kafka-dev.yml

docker compose -p dev --env-file ../.env -f %KAFKA% up -d --build

echo.
echo Docker Compose iniciado com sucesso.
pause
