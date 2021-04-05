# openapi_client.CompanyValuationApi

All URIs are relative to *https://financialmodelingprep.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**profile**](CompanyValuationApi.md#profile) | **GET** /profile/{symbol} | Get the Company profile
[**quote**](CompanyValuationApi.md#quote) | **GET** /quote/{symbol} | Get the Company Quote


# **profile**
> [CompanyProfile] profile(symbol)

Get the Company profile



### Example

* Api Key Authentication (api_key):
```python
import time
import openapi_client
from openapi_client.api import company_valuation_api
from openapi_client.model.company_profile import CompanyProfile
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
    api_instance = company_valuation_api.CompanyValuationApi(api_client)
    symbol = "symbol_example" # str | Name of ticker

    # example passing only required values which don't have defaults set
    try:
        # Get the Company profile
        api_response = api_instance.profile(symbol)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling CompanyValuationApi->profile: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| Name of ticker |

### Return type

[**[CompanyProfile]**](CompanyProfile.md)

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

# **quote**
> [CompanyQuote] quote(symbol)

Get the Company Quote



### Example

* Api Key Authentication (api_key):
```python
import time
import openapi_client
from openapi_client.api import company_valuation_api
from openapi_client.model.company_quote import CompanyQuote
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
    api_instance = company_valuation_api.CompanyValuationApi(api_client)
    symbol = "symbol_example" # str | Name of ticker

    # example passing only required values which don't have defaults set
    try:
        # Get the Company Quote
        api_response = api_instance.quote(symbol)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling CompanyValuationApi->quote: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| Name of ticker |

### Return type

[**[CompanyQuote]**](CompanyQuote.md)

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

