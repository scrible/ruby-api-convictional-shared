# ConvictionalShared::DocumentApi

All URIs are relative to *https://api.convictional.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_document**](DocumentApi.md#get_document) | **GET** /documents/{documentId} | Get document |
| [**list_documents**](DocumentApi.md#list_documents) | **GET** /documents | List documents |
| [**upload_document**](DocumentApi.md#upload_document) | **POST** /documents | Upload document |


## get_document

> Object get_document(document_id)

Get document

An endpoint to get a document stored in Convictional's backend via its ID.

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

api_instance = ConvictionalShared::DocumentApi.new
document_id = 'document_id_example' # String | ID of the document to get

begin
  # Get document
  result = api_instance.get_document(document_id)
  p result
rescue ConvictionalShared::ApiError => e
  puts "Error when calling DocumentApi->get_document: #{e}"
end
```

#### Using the get_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_document_with_http_info(document_id)

```ruby
begin
  # Get document
  data, status_code, headers = api_instance.get_document_with_http_info(document_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue ConvictionalShared::ApiError => e
  puts "Error when calling DocumentApi->get_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_id** | **String** | ID of the document to get |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_documents

> <ResponseMetaData> list_documents(opts)

List documents

An endpoint to list documents relevant to your company stored in our platform (eg. legal agreements, EDI documents, company logos, CSV uploads). Documents are returned in order of those most recently created.

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

api_instance = ConvictionalShared::DocumentApi.new
opts = {
  page: 0, # Integer | The page number of products to return.
  limit: 250, # Integer | The number of products to return.
  tags: 'edi,invoice' # String | A comma-separated list of tags that should be included.
}

begin
  # List documents
  result = api_instance.list_documents(opts)
  p result
rescue ConvictionalShared::ApiError => e
  puts "Error when calling DocumentApi->list_documents: #{e}"
end
```

#### Using the list_documents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseMetaData>, Integer, Hash)> list_documents_with_http_info(opts)

```ruby
begin
  # List documents
  data, status_code, headers = api_instance.list_documents_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseMetaData>
rescue ConvictionalShared::ApiError => e
  puts "Error when calling DocumentApi->list_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page number of products to return. | [optional][default to 0] |
| **limit** | **Integer** | The number of products to return. | [optional][default to 50] |
| **tags** | **String** | A comma-separated list of tags that should be included. | [optional] |

### Return type

[**ResponseMetaData**](ResponseMetaData.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## upload_document

> Object upload_document(upload_document)

Upload document

An endpoint used to upload files to the backend.

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

api_instance = ConvictionalShared::DocumentApi.new
upload_document = ConvictionalShared::UploadDocument.new # UploadDocument | An object containing the document and associated metadata

begin
  # Upload document
  result = api_instance.upload_document(upload_document)
  p result
rescue ConvictionalShared::ApiError => e
  puts "Error when calling DocumentApi->upload_document: #{e}"
end
```

#### Using the upload_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> upload_document_with_http_info(upload_document)

```ruby
begin
  # Upload document
  data, status_code, headers = api_instance.upload_document_with_http_info(upload_document)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue ConvictionalShared::ApiError => e
  puts "Error when calling DocumentApi->upload_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **upload_document** | [**UploadDocument**](UploadDocument.md) | An object containing the document and associated metadata |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

