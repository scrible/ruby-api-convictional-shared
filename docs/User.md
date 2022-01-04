# ConvictionalShared::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | The user ID. | [optional] |
| **emails** | **Array&lt;String&gt;** | A list of email addresses associated with the user. | [optional] |
| **first_name** | **String** | The user&#39;s first name. | [optional] |
| **last_name** | **String** | The user&#39;s family name/surname. | [optional] |
| **api_key** | **String** | A secret token used to authenticate with the Convictional API. Passed in a header as: Authorization &lt;key&gt; | [optional] |
| **created** | **String** | Timestamp of creation. | [optional] |
| **updated** | **String** | Timestamp of most recent update. | [optional] |

## Example

```ruby
require 'convictional_shared'

instance = ConvictionalShared::User.new(
  _id: null,
  emails: null,
  first_name: null,
  last_name: null,
  api_key: null,
  created: null,
  updated: null
)
```

