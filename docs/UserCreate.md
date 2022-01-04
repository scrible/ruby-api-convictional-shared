# ConvictionalShared::UserCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | First name of the user | [optional] |
| **last_name** | **String** | Last name of the user | [optional] |
| **email** | **String** | Email address of user |  |

## Example

```ruby
require 'convictional_shared'

instance = ConvictionalShared::UserCreate.new(
  first_name: John,
  last_name: Doe,
  email: j.doe@convictional.com
)
```

