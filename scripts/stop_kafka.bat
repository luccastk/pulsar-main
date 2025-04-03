@echo off
echo.
echo ========================================
echo     PARANDO TUDO + REMOVENDO VOLUMES
echo ========================================
echo.

set KAFKA=..\docker-kafka\docker-compose.kafka-dev.yml

docker compose -p kafka-dev --env-file ../.env -f %KAFKA% down

echo.
echo Tudo parado e volumes removidos.
pause
