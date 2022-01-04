# ConvictionalShared::Partner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | The ID of the partner. | [optional] |
| **pricing_id** | **String** | ID of the price list assigned to this customer. | [optional] |
| **created** | **String** | The timestamp of creation. | [optional] |
| **updated** | **String** | The timestamp of last update. | [optional] |
| **seller_company_object_id** | **String** | The ID of the seller company. | [optional] |
| **buyer_company_object_id** | **String** | The ID of the buyer company. | [optional] |
| **average_ship_time** | **Float** | The average time in hours it takes the seller to ship an order, based on a given time period. Default is last 30 days. | [optional] |
| **average_return_rate** | **Float** | The percentage of returned orders over the given time period. Default is last 30 days. Value between 0 and 1. | [optional] |
| **seller_assigned_code** | **String** | Assigned to the buyer or partnership by the seller. | [optional] |
| **buyer_assigned_code** | **String** | Assigned to the seller or partnership by the buyer. | [optional] |
| **seller_name** | **String** | The name of the seller company associated with this partner. Only populated when called by a buyer. | [optional] |
| **buyer_name** | **String** | The name of the buyer company associated with this partner. Only populated when called by a seller. | [optional] |
| **metafields** | **Hash&lt;String, Hash&lt;String, Object&gt;&gt;** |  | [optional] |
| **seller_onboarding_completed** | **Boolean** | The seller has completed all onboarding steps onto Convictional. | [optional] |
| **buyer_onboarding_completed** | **Boolean** | The buyer has completed all onboarding steps onto Convictional. | [optional] |
| **getting_started** | [**GettingStarted**](GettingStarted.md) |  | [optional] |

## Example

```ruby
require 'convictional_shared'

instance = ConvictionalShared::Partner.new(
  _id: 5f10b1c80f7a22222293145f,
  pricing_id: abc123,
  created: 2020-07-01T13:41:00.000+0400,
  updated: 2020-07-01T13:41:00.000+0400,
  seller_company_object_id: 5f10b1c80f7a222222931411,
  buyer_company_object_id: 5f10b1c80f7a222222931422,
  average_ship_time: 60.3,
  average_return_rate: 0.1,
  seller_assigned_code: Customer-ABC,
  buyer_assigned_code: Supplier-ABC,
  seller_name: Fred&#39;s Shoe Co.,
  buyer_name: Marketplace XYZ,
  metafields: null,
  seller_onboarding_completed: false,
  buyer_onboarding_completed: false,
  getting_started: null
)
```

