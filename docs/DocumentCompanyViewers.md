# ConvictionalShared::DocumentCompanyViewers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The Convictional ID of the company that can view this file. | [optional] |
| **name** | **String** | The name of the company that can see your document | [optional] |
| **added_by_name** | **String** | The name of the user that added this viewer | [optional] |
| **added_by_email** | **String** | The user id of the user that added this viewer | [optional] |

## Example

```ruby
require 'convictional_shared'

instance = ConvictionalShared::DocumentCompanyViewers.new(
  id: null,
  name: null,
  added_by_name: null,
  added_by_email: null
)
```

