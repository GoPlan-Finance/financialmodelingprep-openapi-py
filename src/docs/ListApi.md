# openapi_client.ListApi

All URIs are relative to *https://financialmodelingprep.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_symbols**](ListApi.md#list_symbols) | **GET** /{type}/list | Get list of symbols


# **list_symbols**
> [Symbol] list_symbols(type)

Get list of symbols



### Example

* Api Key Authentication (api_key):
```python
import time
import openapi_client
from openapi_client.api import list_api
from openapi_client.model.symbol import Symbol
from pprint import pprint
# Defining the host is optional and defaults to https://financialmodelingprep.com/api/v3
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://financialmodelingprep.com/api/v3"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: api_key
configuration.api_key['api_key'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = list_api.ListApi(api_client)
    type = "stock" # str | Type of symbols to list

    # example passing only required values which don't have defaults set
    try:
        # Get list of symbols
        api_response = api_instance.list_symbols(type)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling ListApi->list_symbols: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **str**| Type of symbols to list |

### Return type

[**[Symbol]**](Symbol.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |
**405** | Invalid input |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

