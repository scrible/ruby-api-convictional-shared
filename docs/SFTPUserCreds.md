# ConvictionalShared::SFTPUserCreds

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | Username for use in the SFTP credentials. The username must be unique. | [optional] |
| **password** | **String** | Password for use in the SFTP credentials. The password must pass a password strength check. | [optional] |

## Example

```ruby
require 'convictional_shared'

instance = ConvictionalShared::SFTPUserCreds.new(
  username: null,
  password: null
)
```

