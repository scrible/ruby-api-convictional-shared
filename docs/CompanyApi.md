# ConvictionalShared::CompanyApi

All URIs are relative to *https://api.convictional.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_sftp_user_by_username**](CompanyApi.md#delete_sftp_user_by_username) | **DELETE** /sftp/{username} | Delete SFTP credentials |
| [**patch_sftp_user_by_username**](CompanyApi.md#patch_sftp_user_by_username) | **PATCH** /sftp/{username} | Update SFTP credentials |
| [**post_sftp_credentials**](CompanyApi.md#post_sftp_credentials) | **POST** /sftp | Create SFTP credentials |


## delete_sftp_user_by_username

> <SFTPUserDeleteSuccess> delete_sftp_user_by_username(authorization, username)

Delete SFTP credentials

An endpoint for deleting SFTP credentials.

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

api_instance = ConvictionalShared::CompanyApi.new
authorization = '6fbb801c-2f9b-42a3-9c44-4e57463fb3a4' # String | Auth token provided by Convictional upon account creation.
username = 'testUsername' # String | Username associated with the SFTP credentials to be deleted

begin
  # Delete SFTP credentials
  result = api_instance.delete_sftp_user_by_username(authorization, username)
  p result
rescue ConvictionalShared::ApiError => e
  puts "Error when calling CompanyApi->delete_sftp_user_by_username: #{e}"
end
```

#### Using the delete_sftp_user_by_username_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SFTPUserDeleteSuccess>, Integer, Hash)> delete_sftp_user_by_username_with_http_info(authorization, username)

```ruby
begin
  # Delete SFTP credentials
  data, status_code, headers = api_instance.delete_sftp_user_by_username_with_http_info(authorization, username)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SFTPUserDeleteSuccess>
rescue ConvictionalShared::ApiError => e
  puts "Error when calling CompanyApi->delete_sftp_user_by_username_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | Auth token provided by Convictional upon account creation. |  |
| **username** | **String** | Username associated with the SFTP credentials to be deleted |  |

### Return type

[**SFTPUserDeleteSuccess**](SFTPUserDeleteSuccess.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_sftp_user_by_username

> <SFTPUserUpdateSuccess> patch_sftp_user_by_username(authorization, username, sftp_user_update)

Update SFTP credentials

An endpoint for updating an SFTP user's password.

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

api_instance = ConvictionalShared::CompanyApi.new
authorization = '6fbb801c-2f9b-42a3-9c44-4e57463fb3a4' # String | Auth token provided by Convictional upon account creation.
username = 'testUsername' # String | Username associated with the SFTP credentials to be updated
sftp_user_update = ConvictionalShared::SFTPUserUpdate.new # SFTPUserUpdate | New password for updating SFTP credentials.

begin
  # Update SFTP credentials
  result = api_instance.patch_sftp_user_by_username(authorization, username, sftp_user_update)
  p result
rescue ConvictionalShared::ApiError => e
  puts "Error when calling CompanyApi->patch_sftp_user_by_username: #{e}"
end
```

#### Using the patch_sftp_user_by_username_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SFTPUserUpdateSuccess>, Integer, Hash)> patch_sftp_user_by_username_with_http_info(authorization, username, sftp_user_update)

```ruby
begin
  # Update SFTP credentials
  data, status_code, headers = api_instance.patch_sftp_user_by_username_with_http_info(authorization, username, sftp_user_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SFTPUserUpdateSuccess>
rescue ConvictionalShared::ApiError => e
  puts "Error when calling CompanyApi->patch_sftp_user_by_username_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | Auth token provided by Convictional upon account creation. |  |
| **username** | **String** | Username associated with the SFTP credentials to be updated |  |
| **sftp_user_update** | [**SFTPUserUpdate**](SFTPUserUpdate.md) | New password for updating SFTP credentials. |  |

### Return type

[**SFTPUserUpdateSuccess**](SFTPUserUpdateSuccess.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_sftp_credentials

> <SFTPUserCreateSuccess> post_sftp_credentials(authorization, sftp_user_creds)

Create SFTP credentials

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

api_instance = ConvictionalShared::CompanyApi.new
authorization = '6fbb801c-2f9b-42a3-9c44-4e57463fb3a4' # String | Auth token provided by Convictional upon account creation.
sftp_user_creds = ConvictionalShared::SFTPUserCreds.new # SFTPUserCreds | A unique username and password to create SFTP credentials.

begin
  # Create SFTP credentials
  result = api_instance.post_sftp_credentials(authorization, sftp_user_creds)
  p result
rescue ConvictionalShared::ApiError => e
  puts "Error when calling CompanyApi->post_sftp_credentials: #{e}"
end
```

#### Using the post_sftp_credentials_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SFTPUserCreateSuccess>, Integer, Hash)> post_sftp_credentials_with_http_info(authorization, sftp_user_creds)

```ruby
begin
  # Create SFTP credentials
  data, status_code, headers = api_instance.post_sftp_credentials_with_http_info(authorization, sftp_user_creds)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SFTPUserCreateSuccess>
rescue ConvictionalShared::ApiError => e
  puts "Error when calling CompanyApi->post_sftp_credentials_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | Auth token provided by Convictional upon account creation. |  |
| **sftp_user_creds** | [**SFTPUserCreds**](SFTPUserCreds.md) | A unique username and password to create SFTP credentials. |  |

### Return type

[**SFTPUserCreateSuccess**](SFTPUserCreateSuccess.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

