# ConvictionalShared::Document

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | The Convictional document ID. Read only. | [optional] |
| **user_id** | **String** | The Convictional ID of the user who uploaded the file. | [optional] |
| **company_id** | **String** | The Convictional ID of the company the document belongs to. | [optional] |
| **shared_with_company** | **Boolean** | If the document is visible to the other users of the company or not | [optional] |
| **company_viewers** | [**Array&lt;DocumentCompanyViewers&gt;**](DocumentCompanyViewers.md) | A list of other companies this document is shared with | [optional] |
| **size** | **Integer** | The size of the file, in bytes | [optional] |
| **file_name** | **String** | The name of the file | [optional] |
| **file_type** | **String** | The MIME type of the file | [optional] |
| **deletable** | **Boolean** | If the file is deletable. Read only. | [optional] |
| **created** | **String** | The timestamp when the document was originally created by the customer. | [optional] |
| **tags** | **Array&lt;String&gt;** | The tags associated with the document. | [optional] |

## Example

```ruby
require 'convictional_shared'

instance = ConvictionalShared::Document.new(
  _id: 60c3bf46388d071b1adb2100,
  user_id: null,
  company_id: null,
  shared_with_company: null,
  company_viewers: null,
  size: null,
  file_name: null,
  file_type: text/plain,
  deletable: null,
  created: 2021-06-14T19:27:19.485Z,
  tags: [&quot;edi&quot;,&quot;invoice&quot;]
)
```

