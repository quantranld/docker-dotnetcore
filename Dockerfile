FROM mcr.microsoft.com/dotnet/core/sdk:3.1

RUN mkdir app

WORKDIR /app

COPY . .

RUN dotnet restore

CMD dotnet watch run