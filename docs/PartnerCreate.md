# ConvictionalShared::PartnerCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The partner&#39;s email | [optional] |
| **pricing_id** | **String** | The ID of the price list (sellers only) | [optional] |

## Example

```ruby
require 'convictional_shared'

instance = ConvictionalShared::PartnerCreate.new(
  email: name@domain.com,
  pricing_id: 5f10b1c80f7a222222931422
)
```

