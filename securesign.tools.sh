docker build . -t securesign
docker run --rm -it --entrypoint="dotnet" -v "$PWD:/root" securesign /app/SecureSign.Tools.dll $@
