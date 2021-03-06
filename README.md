# convictional_shared

ConvictionalShared - the Ruby gem for the Shared API

Convictional is the first B2B trade enablement network. This API allows developers to build on our seller and buyer capabilities. This API is unstable, meaning the endpoints could be added, updated or removed without notice. We intend to make backwards incompatible changes in the future, and will make best efforts to notify you in the event of your usage of impacted endpoints. If you plan to build on this API, please contact us for recommendations via support@convictional.com.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v2021-01-01
- Package version: 2021.1.1
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [https://support.convictional.com](https://support.convictional.com)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build convictional_shared.gemspec
```

Then either install the gem locally:

```shell
gem install ./convictional_shared-2021.1.1.gem
```

(for development, run `gem install --dev ./convictional_shared-2021.1.1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'convictional_shared', '~> 2021.1.1'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'convictional_shared', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'convictional_shared'

# Setup authorization
ConvictionalShared.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = ConvictionalShared::CompanyApi.new
authorization = '6fbb801c-2f9b-42a3-9c44-4e57463fb3a4' # String | Auth token provided by Convictional upon account creation.
username = 'testUsername' # String | Username associated with the SFTP credentials to be deleted

begin
  #Delete SFTP credentials
  result = api_instance.delete_sftp_user_by_username(authorization, username)
  p result
rescue ConvictionalShared::ApiError => e
  puts "Exception when calling CompanyApi->delete_sftp_user_by_username: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.convictional.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ConvictionalShared::CompanyApi* | [**delete_sftp_user_by_username**](docs/CompanyApi.md#delete_sftp_user_by_username) | **DELETE** /sftp/{username} | Delete SFTP credentials
*ConvictionalShared::CompanyApi* | [**patch_sftp_user_by_username**](docs/CompanyApi.md#patch_sftp_user_by_username) | **PATCH** /sftp/{username} | Update SFTP credentials
*ConvictionalShared::CompanyApi* | [**post_sftp_credentials**](docs/CompanyApi.md#post_sftp_credentials) | **POST** /sftp | Create SFTP credentials
*ConvictionalShared::DocumentApi* | [**get_document**](docs/DocumentApi.md#get_document) | **GET** /documents/{documentId} | Get document
*ConvictionalShared::DocumentApi* | [**list_documents**](docs/DocumentApi.md#list_documents) | **GET** /documents | List documents
*ConvictionalShared::DocumentApi* | [**upload_document**](docs/DocumentApi.md#upload_document) | **POST** /documents | Upload document
*ConvictionalShared::PartnerApi* | [**get_partners**](docs/PartnerApi.md#get_partners) | **GET** /partners | List partners
*ConvictionalShared::PartnerApi* | [**patch_partner_by_id**](docs/PartnerApi.md#patch_partner_by_id) | **PATCH** /partners/{partnerId} | Update partner
*ConvictionalShared::PartnerApi* | [**post_partnership**](docs/PartnerApi.md#post_partnership) | **POST** /partners | Create partner
*ConvictionalShared::UserApi* | [**get_me**](docs/UserApi.md#get_me) | **GET** /auth/me | Get current user and company
*ConvictionalShared::UserApi* | [**patch_user_by_id**](docs/UserApi.md#patch_user_by_id) | **PATCH** /users/{userId} | Update user
*ConvictionalShared::UserApi* | [**post_new_company_user**](docs/UserApi.md#post_new_company_user) | **POST** /onboarding/user/invite | Invite user to company
*ConvictionalShared::UserApi* | [**roll_user_api_key**](docs/UserApi.md#roll_user_api_key) | **POST** /users/{userId}/roll | Roll API key


## Documentation for Models

 - [ConvictionalShared::AuthMe](docs/AuthMe.md)
 - [ConvictionalShared::Company](docs/Company.md)
 - [ConvictionalShared::Document](docs/Document.md)
 - [ConvictionalShared::DocumentCompanyViewers](docs/DocumentCompanyViewers.md)
 - [ConvictionalShared::EmptyError](docs/EmptyError.md)
 - [ConvictionalShared::ErrorMessage](docs/ErrorMessage.md)
 - [ConvictionalShared::GetDocument](docs/GetDocument.md)
 - [ConvictionalShared::GettingStarted](docs/GettingStarted.md)
 - [ConvictionalShared::InlineResponse200](docs/InlineResponse200.md)
 - [ConvictionalShared::InlineResponse400](docs/InlineResponse400.md)
 - [ConvictionalShared::InlineResponse401](docs/InlineResponse401.md)
 - [ConvictionalShared::InlineResponse404](docs/InlineResponse404.md)
 - [ConvictionalShared::InlineResponse500](docs/InlineResponse500.md)
 - [ConvictionalShared::InlineResponse5001](docs/InlineResponse5001.md)
 - [ConvictionalShared::OnboardingState](docs/OnboardingState.md)
 - [ConvictionalShared::OnboardingUserRequest](docs/OnboardingUserRequest.md)
 - [ConvictionalShared::Partner](docs/Partner.md)
 - [ConvictionalShared::PartnerCreate](docs/PartnerCreate.md)
 - [ConvictionalShared::PartnerUpdate](docs/PartnerUpdate.md)
 - [ConvictionalShared::ResponseMetaData](docs/ResponseMetaData.md)
 - [ConvictionalShared::SFTPUserCreateSuccess](docs/SFTPUserCreateSuccess.md)
 - [ConvictionalShared::SFTPUserCreateSuccessData](docs/SFTPUserCreateSuccessData.md)
 - [ConvictionalShared::SFTPUserCreds](docs/SFTPUserCreds.md)
 - [ConvictionalShared::SFTPUserDeleteSuccess](docs/SFTPUserDeleteSuccess.md)
 - [ConvictionalShared::SFTPUserDeleteSuccessData](docs/SFTPUserDeleteSuccessData.md)
 - [ConvictionalShared::SFTPUserUpdate](docs/SFTPUserUpdate.md)
 - [ConvictionalShared::SFTPUserUpdateSuccess](docs/SFTPUserUpdateSuccess.md)
 - [ConvictionalShared::SFTPUserUpdateSuccessData](docs/SFTPUserUpdateSuccessData.md)
 - [ConvictionalShared::UploadDocument](docs/UploadDocument.md)
 - [ConvictionalShared::UploadDocumentPartnersWithViewAccess](docs/UploadDocumentPartnersWithViewAccess.md)
 - [ConvictionalShared::User](docs/User.md)
 - [ConvictionalShared::UserCreate](docs/UserCreate.md)
 - [ConvictionalShared::UserUpdate](docs/UserUpdate.md)


## Documentation for Authorization


### ApiKeyAuth


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

