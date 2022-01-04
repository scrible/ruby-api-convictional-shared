# ConvictionalShared::OnboardingState

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **required** | **Boolean** | The onboarding step is required to be completed in order to onboard. | [optional] |
| **status** | **String** | A string representing the state of the onboarding. It can be completed, incomplete or skipped. | [optional] |

## Example

```ruby
require 'convictional_shared'

instance = ConvictionalShared::OnboardingState.new(
  required: false,
  status: completed
)
```

