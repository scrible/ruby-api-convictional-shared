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

# Unit tests for ConvictionalShared::CompanyApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CompanyApi' do
  before do
    # run before each test
    @api_instance = ConvictionalShared::CompanyApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CompanyApi' do
    it 'should create an instance of CompanyApi' do
      expect(@api_instance).to be_instance_of(ConvictionalShared::CompanyApi)
    end
  end

  # unit tests for delete_sftp_user_by_username
  # Delete SFTP credentials
  # An endpoint for deleting SFTP credentials.
  # @param authorization Auth token provided by Convictional upon account creation.
  # @param username Username associated with the SFTP credentials to be deleted
  # @param [Hash] opts the optional parameters
  # @return [SFTPUserDeleteSuccess]
  describe 'delete_sftp_user_by_username test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_sftp_user_by_username
  # Update SFTP credentials
  # An endpoint for updating an SFTP user&#39;s password.
  # @param authorization Auth token provided by Convictional upon account creation.
  # @param username Username associated with the SFTP credentials to be updated
  # @param sftp_user_update New password for updating SFTP credentials.
  # @param [Hash] opts the optional parameters
  # @return [SFTPUserUpdateSuccess]
  describe 'patch_sftp_user_by_username test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_sftp_credentials
  # Create SFTP credentials
  # @param authorization Auth token provided by Convictional upon account creation.
  # @param sftp_user_creds A unique username and password to create SFTP credentials.
  # @param [Hash] opts the optional parameters
  # @return [SFTPUserCreateSuccess]
  describe 'post_sftp_credentials test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end