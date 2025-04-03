@echo off
echo.
echo ========================================
echo 	  	INICIANDO KAFKA
echo ========================================
echo.

echo criando pasta KAFKA/data...
mkdir ..\docker-kafka\KAFKA\data

set KAFKA=..\docker-kafka\docker-compose.kafka-dev.yml

docker compose -p kafka-dev --env-file ../.env -f %KAFKA% up -d --build

echo.
echo Docker Compose iniciado com sucesso.
pause
