# ConvictionalShared::PartnerUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | Is this supplier or customer active? | [optional] |
| **billing** | **Boolean** | Are you invoicing in Convictional? | [optional] |
| **price_list** | **String** | Price list assigned to this customer | [optional] |
| **seller_assigned_code** | **String** | Assigned to the buyer or partnership by the seller. | [optional] |
| **buyer_assigned_code** | **String** | Assigned to the seller or partnership by the buyer. | [optional] |
| **pricing_id** | **String** | ID of the price list assigned to this customer | [optional] |
| **metafields** | **Hash&lt;String, Hash&lt;String, Object&gt;&gt;** |  | [optional] |

## Example

```ruby
require 'convictional_shared'

instance = ConvictionalShared::PartnerUpdate.new(
  active: true,
  billing: true,
  price_list: Gold Tier Pricing,
  seller_assigned_code: Customer-ABC,
  buyer_assigned_code: Supplier-ABC,
  pricing_id: abc123,
  metafields: null
)
```

