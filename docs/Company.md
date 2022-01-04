# ConvictionalShared::Company

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | The company ID. | [optional] |
| **url** | **String** | The url of the company website. | [optional] |
| **commerce_type** | **String** | Values are \&quot;buyer\&quot; or \&quot;seller\&quot;. Determines the features available to the company. | [optional] |
| **name** | **String** | The company name. | [optional] |
| **contact_email** | **String** | The general email used to contact the company. This is visible to partners and your customers. | [optional] |
| **created** | **String** | Timestamp of creation. | [optional] |
| **updated** | **String** | Timestamp of most recent update. | [optional] |

## Example

```ruby
require 'convictional_shared'

instance = ConvictionalShared::Company.new(
  _id: null,
  url: null,
  commerce_type: null,
  name: null,
  contact_email: null,
  created: null,
  updated: null
)
```

