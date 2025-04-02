@echo off
echo.
echo ========================================
echo 🐳  INICIANDO INFRAESTRUTURA + SERVIÇOS
echo ========================================
echo.

REM Caminho até os arquivos
set EUREKA=.\docker-eureka\docker-compose.eureka-dev.yml
set GATEWAY=.\docker-gateway\docker-compose.gateway.yml
set KAFKA=.\docker-kafka\docker-compose.kafka-dev.yml
set INFRA=.\docker-infra\docker-compose.infra-dev.yml
set SERVICES=.\docker-services\docker-compose.service-dev.yml

REM Subindo os containers com build
docker compose -f %EUREKA% -f %GATEWAY% %KAFKA% %INFRA% %SERVICES% up -d --build

echo.
echo ✅ Docker Compose iniciado com sucesso.
pause
