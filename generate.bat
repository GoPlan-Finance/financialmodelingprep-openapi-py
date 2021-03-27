



docker run --rm -v "%CD%/../../:/local" openapitools/openapi-generator-cli generate  -i /local/FMP.yaml    -g python  -o /local/languages/python/src/

