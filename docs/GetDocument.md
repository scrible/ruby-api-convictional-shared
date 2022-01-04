# ConvictionalShared::GetDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bytes** | **String** | Base64 encoded contents of the file | [optional] |
| **file_name** | **String** | The name of the file | [optional] |
| **file_type** | **String** | The MIME type of the file | [optional] |

## Example

```ruby
require 'convictional_shared'

instance = ConvictionalShared::GetDocument.new(
  bytes: null,
  file_name: null,
  file_type: text/plain
)
```

