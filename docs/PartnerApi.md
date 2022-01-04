# ConvictionalShared::PartnerApi

All URIs are relative to *https://api.convictional.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_partners**](PartnerApi.md#get_partners) | **GET** /partners | List partners |
| [**patch_partner_by_id**](PartnerApi.md#patch_partner_by_id) | **PATCH** /partners/{partnerId} | Update partner |
| [**post_partnership**](PartnerApi.md#post_partnership) | **POST** /partners | Create partner |


## get_partners

> Object get_partners(opts)

List partners

An endpoint for getting partners.

### Examples

```ruby
require 'time'
require 'convictional_shared'
# setup authorization
ConvictionalShared.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = ConvictionalShared::PartnerApi.new
opts = {
  page: 0, # Integer | The page number of results to return. Note this is a zero-based index.
  limit: 25, # Integer | The number of results per page. Max is 250.
  completed: true, # Boolean | Show partners who have completed the onboarding steps.
  show_onboarding_status: true # Boolean | Provide the getting started status within the partner. If false, partners[0].gettingStarted will be null.
}

begin
  # List partners
  result = api_instance.get_partners(opts)
  p result
rescue ConvictionalShared::ApiError => e
  puts "Error when calling PartnerApi->get_partners: #{e}"
end
```

#### Using the get_partners_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_partners_with_http_info(opts)

```ruby
begin
  # List partners
  data, status_code, headers = api_instance.get_partners_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue ConvictionalShared::ApiError => e
  puts "Error when calling PartnerApi->get_partners_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page number of results to return. Note this is a zero-based index. | [optional] |
| **limit** | **Integer** | The number of results per page. Max is 250. | [optional] |
| **completed** | **Boolean** | Show partners who have completed the onboarding steps. | [optional] |
| **show_onboarding_status** | **Boolean** | Provide the getting started status within the partner. If false, partners[0].gettingStarted will be null. | [optional] |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_partner_by_id

> <Partner> patch_partner_by_id(partner_id, partner_update)

Update partner

An endpoint for partially updating partners.

### Examples

```ruby
require 'time'
require 'convictional_shared'
# setup authorization
ConvictionalShared.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = ConvictionalShared::PartnerApi.new
partner_id = 'partner_id_example' # String | ID of the partner
partner_update = ConvictionalShared::PartnerUpdate.new # PartnerUpdate | 

begin
  # Update partner
  result = api_instance.patch_partner_by_id(partner_id, partner_update)
  p result
rescue ConvictionalShared::ApiError => e
  puts "Error when calling PartnerApi->patch_partner_by_id: #{e}"
end
```

#### Using the patch_partner_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Partner>, Integer, Hash)> patch_partner_by_id_with_http_info(partner_id, partner_update)

```ruby
begin
  # Update partner
  data, status_code, headers = api_instance.patch_partner_by_id_with_http_info(partner_id, partner_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Partner>
rescue ConvictionalShared::ApiError => e
  puts "Error when calling PartnerApi->patch_partner_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **partner_id** | **String** | ID of the partner |  |
| **partner_update** | [**PartnerUpdate**](PartnerUpdate.md) |  |  |

### Return type

[**Partner**](Partner.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_partnership

> <Partner> post_partnership(partner_create)

Create partner

An endpoint for creating new partners. If you are a seller, please provide an email and price list ID. If you are a buyer, only an email is required.

### Examples

```ruby
require 'time'
require 'convictional_shared'
# setup authorization
ConvictionalShared.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = ConvictionalShared::PartnerApi.new
partner_create = ConvictionalShared::PartnerCreate.new # PartnerCreate | An object containing a partnership

begin
  # Create partner
  result = api_instance.post_partnership(partner_create)
  p result
rescue ConvictionalShared::ApiError => e
  puts "Error when calling PartnerApi->post_partnership: #{e}"
end
```

#### Using the post_partnership_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Partner>, Integer, Hash)> post_partnership_with_http_info(partner_create)

```ruby
begin
  # Create partner
  data, status_code, headers = api_instance.post_partnership_with_http_info(partner_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Partner>
rescue ConvictionalShared::ApiError => e
  puts "Error when calling PartnerApi->post_partnership_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **partner_create** | [**PartnerCreate**](PartnerCreate.md) | An object containing a partnership |  |

### Return type

[**Partner**](Partner.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

