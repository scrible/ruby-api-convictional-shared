# ConvictionalShared::UploadDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shared_with_company** | **Boolean** | If the document is visible to the other users of the company or not | [optional] |
| **partners_with_view_access** | [**Array&lt;UploadDocumentPartnersWithViewAccess&gt;**](UploadDocumentPartnersWithViewAccess.md) | A list of other companies this document is shared with | [optional] |
| **bytes** | **String** | Base64 encoded contents of the file | [optional] |
| **file_name** | **String** | The name of the file | [optional] |
| **file_type** | **String** | The MIME type of the file | [optional] |
| **tags** | **Array&lt;String&gt;** | The tags associated with the document. | [optional] |

## Example

```ruby
require 'convictional_shared'

instance = ConvictionalShared::UploadDocument.new(
  shared_with_company: null,
  partners_with_view_access: null,
  bytes: null,
  file_name: null,
  file_type: text/plain,
  tags: [&quot;edi&quot;,&quot;invoice&quot;]
)
```

