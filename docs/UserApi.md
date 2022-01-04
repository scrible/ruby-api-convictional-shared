# ConvictionalShared::UserApi

All URIs are relative to *https://api.convictional.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_me**](UserApi.md#get_me) | **GET** /auth/me | Get current user and company |
| [**patch_user_by_id**](UserApi.md#patch_user_by_id) | **PATCH** /users/{userId} | Update user |
| [**post_new_company_user**](UserApi.md#post_new_company_user) | **POST** /onboarding/user/invite | Invite user to company |
| [**roll_user_api_key**](UserApi.md#roll_user_api_key) | **POST** /users/{userId}/roll | Roll API key |


## get_me

> <AuthMe> get_me

Get current user and company

An endpoint for fetching data related to the current user and company.

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

api_instance = ConvictionalShared::UserApi.new

begin
  # Get current user and company
  result = api_instance.get_me
  p result
rescue ConvictionalShared::ApiError => e
  puts "Error when calling UserApi->get_me: #{e}"
end
```

#### Using the get_me_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthMe>, Integer, Hash)> get_me_with_http_info

```ruby
begin
  # Get current user and company
  data, status_code, headers = api_instance.get_me_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthMe>
rescue ConvictionalShared::ApiError => e
  puts "Error when calling UserApi->get_me_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AuthMe**](AuthMe.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_user_by_id

> <UserUpdate> patch_user_by_id(user_id)

Update user

An endpoint for partially updating users.

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

api_instance = ConvictionalShared::UserApi.new
user_id = 'user_id_example' # String | ID of the user

begin
  # Update user
  result = api_instance.patch_user_by_id(user_id)
  p result
rescue ConvictionalShared::ApiError => e
  puts "Error when calling UserApi->patch_user_by_id: #{e}"
end
```

#### Using the patch_user_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserUpdate>, Integer, Hash)> patch_user_by_id_with_http_info(user_id)

```ruby
begin
  # Update user
  data, status_code, headers = api_instance.patch_user_by_id_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserUpdate>
rescue ConvictionalShared::ApiError => e
  puts "Error when calling UserApi->patch_user_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | ID of the user |  |

### Return type

[**UserUpdate**](UserUpdate.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_new_company_user

> post_new_company_user(onboarding_user_request)

Invite user to company

An endpoint for adding a new user to an existing company.

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

api_instance = ConvictionalShared::UserApi.new
onboarding_user_request = ConvictionalShared::OnboardingUserRequest.new # OnboardingUserRequest | An object containing company details

begin
  # Invite user to company
  api_instance.post_new_company_user(onboarding_user_request)
rescue ConvictionalShared::ApiError => e
  puts "Error when calling UserApi->post_new_company_user: #{e}"
end
```

#### Using the post_new_company_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_new_company_user_with_http_info(onboarding_user_request)

```ruby
begin
  # Invite user to company
  data, status_code, headers = api_instance.post_new_company_user_with_http_info(onboarding_user_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ConvictionalShared::ApiError => e
  puts "Error when calling UserApi->post_new_company_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **onboarding_user_request** | [**OnboardingUserRequest**](OnboardingUserRequest.md) | An object containing company details |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## roll_user_api_key

> <InlineResponse200> roll_user_api_key(user_id)

Roll API key

An endpoint to roll the supplied API key.

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

api_instance = ConvictionalShared::UserApi.new
user_id = 'user_id_example' # String | ID of the user

begin
  # Roll API key
  result = api_instance.roll_user_api_key(user_id)
  p result
rescue ConvictionalShared::ApiError => e
  puts "Error when calling UserApi->roll_user_api_key: #{e}"
end
```

#### Using the roll_user_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse200>, Integer, Hash)> roll_user_api_key_with_http_info(user_id)

```ruby
begin
  # Roll API key
  data, status_code, headers = api_instance.roll_user_api_key_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse200>
rescue ConvictionalShared::ApiError => e
  puts "Error when calling UserApi->roll_user_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | ID of the user |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

