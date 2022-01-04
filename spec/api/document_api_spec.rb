=begin
#Shared API

#Convictional is the first B2B trade enablement network. This API allows developers to build on our seller and buyer capabilities. This API is unstable, meaning the endpoints could be added, updated or removed without notice. We intend to make backwards incompatible changes in the future, and will make best efforts to notify you in the event of your usage of impacted endpoints. If you plan to build on this API, please contact us for recommendations via support@convictional.com.

The version of the OpenAPI document: v2021-01-01
Contact: support@convictional.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for ConvictionalShared::DocumentApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DocumentApi' do
  before do
    # run before each test
    @api_instance = ConvictionalShared::DocumentApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DocumentApi' do
    it 'should create an instance of DocumentApi' do
      expect(@api_instance).to be_instance_of(ConvictionalShared::DocumentApi)
    end
  end

  # unit tests for get_document
  # Get document
  # An endpoint to get a document stored in Convictional&#39;s backend via its ID.
  # @param document_id ID of the document to get
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'get_document test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_documents
  # List documents
  # An endpoint to list documents relevant to your company stored in our platform (eg. legal agreements, EDI documents, company logos, CSV uploads). Documents are returned in order of those most recently created.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page The page number of products to return.
  # @option opts [Integer] :limit The number of products to return.
  # @option opts [String] :tags A comma-separated list of tags that should be included.
  # @return [ResponseMetaData]
  describe 'list_documents test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for upload_document
  # Upload document
  # An endpoint used to upload files to the backend.
  # @param upload_document An object containing the document and associated metadata
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'upload_document test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end