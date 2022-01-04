# ConvictionalShared::GettingStarted

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **connect_shopify** | [**OnboardingState**](OnboardingState.md) |  | [optional] |
| **connect_big_commerce** | [**OnboardingState**](OnboardingState.md) |  | [optional] |
| **connect_woo_commerce** | [**OnboardingState**](OnboardingState.md) |  | [optional] |
| **connect_lightspeed** | [**OnboardingState**](OnboardingState.md) |  | [optional] |
| **connect_stripe** | [**OnboardingState**](OnboardingState.md) |  | [optional] |
| **invite_team** | [**OnboardingState**](OnboardingState.md) |  | [optional] |
| **invite_partners** | [**OnboardingState**](OnboardingState.md) |  | [optional] |
| **active_products** | [**OnboardingState**](OnboardingState.md) |  | [optional] |
| **created_price_list** | [**OnboardingState**](OnboardingState.md) |  | [optional] |
| **add_payment_method** | [**OnboardingState**](OnboardingState.md) |  | [optional] |
| **signed_up** | **Boolean** | If the user has signed up for Convictional yet | [optional] |
| **required_count** | **Integer** | The number of required steps that have been completed. | [optional] |
| **done_count** | **Integer** | The number of steps that have been completed. | [optional] |

## Example

```ruby
require 'convictional_shared'

instance = ConvictionalShared::GettingStarted.new(
  connect_shopify: null,
  connect_big_commerce: null,
  connect_woo_commerce: null,
  connect_lightspeed: null,
  connect_stripe: null,
  invite_team: null,
  invite_partners: null,
  active_products: null,
  created_price_list: null,
  add_payment_method: null,
  signed_up: false,
  required_count: 0,
  done_count: 0
)
```

