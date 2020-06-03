# docker-dotnetcore

docker build -t frontend . \
docker run --rm -p:5000:5000 -p:5001:5001 -v ./src:/app -t frontend \

*Sql server 2017 - can run on windows/linux* \
docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=Password_123' -e 'MSSQL_PID=Express' -p 1433:1433 --name sqlserver2017 mcr.microsoft.com/mssql/server \

*Link app to sqlserver* \
docker run -p:5000:5000 -p:5001:5001 -v ./src:/app -t --link sqlserver2017 --name frontend frontend \
