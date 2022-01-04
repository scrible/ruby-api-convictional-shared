# ConvictionalShared::SFTPUserUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **password** | **String** | Password for use in the SFTP credentials. The password must pass a password strength check. | [optional] |

## Example

```ruby
require 'convictional_shared'

instance = ConvictionalShared::SFTPUserUpdate.new(
  password: null
)
```

