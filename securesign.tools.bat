@echo off
docker build . -t securesign
docker run --rm -it --entrypoint="dotnet" -v "%CD%:/root" securesign /app/SecureSign.Tools.dll %*
