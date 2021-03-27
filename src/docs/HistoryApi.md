# openapi_client.HistoryApi

All URIs are relative to *https://financialmodelingprep.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**daily_prices**](HistoryApi.md#daily_prices) | **GET** /historical-price-full/{symbol} | Get Ticker price
[**intra_day_prices**](HistoryApi.md#intra_day_prices) | **GET** /historical-chart/{resolution}/{symbol} | Get Ticker price


# **daily_prices**
> EndOfDayPriceHistory daily_prices(symbol)

Get Ticker price

### Example

* Api Key Authentication (api_key):
```python
import time
import openapi_client
from openapi_client.api import history_api
from openapi_client.model.end_of_day_price_history import EndOfDayPriceHistory
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
    api_instance = history_api.HistoryApi(api_client)
    symbol = "symbol_example" # str | Name of ticker
    _from =  # date | From date (optional)
    to =  # date | To date (optional)

    # example passing only required values which don't have defaults set
    try:
        # Get Ticker price
        api_response = api_instance.daily_prices(symbol)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling HistoryApi->daily_prices: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Get Ticker price
        api_response = api_instance.daily_prices(symbol, _from=_from, to=to)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling HistoryApi->daily_prices: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| Name of ticker |
 **_from** | **date**| From date | [optional]
 **to** | **date**| To date | [optional]

### Return type

[**EndOfDayPriceHistory**](EndOfDayPriceHistory.md)

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

# **intra_day_prices**
> OHVCVPrices intra_day_prices(symbol, resolution)

Get Ticker price

### Example

* Api Key Authentication (api_key):
```python
import time
import openapi_client
from openapi_client.api import history_api
from openapi_client.model.ohvcv_prices import OHVCVPrices
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
    api_instance = history_api.HistoryApi(api_client)
    symbol = "symbol_example" # str | Name of ticker
    resolution = "1min" # str | Time resolution

    # example passing only required values which don't have defaults set
    try:
        # Get Ticker price
        api_response = api_instance.intra_day_prices(symbol, resolution)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling HistoryApi->intra_day_prices: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| Name of ticker |
 **resolution** | **str**| Time resolution |

### Return type

[**OHVCVPrices**](OHVCVPrices.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

