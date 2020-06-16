FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env
WORKDIR /src

# Copy everything else and build
COPY src/ ./
RUN dotnet publish -c Release -o out

FROM mcr.microsoft.com/dotnet/core/aspnet:2.2
RUN apt update && apt -y install osslsigncode libgpgme11
WORKDIR /app
COPY --from=build-env /src/out .
WORKDIR /root
ENTRYPOINT ["dotnet", "/app/SecureSign.Web.dll"]
