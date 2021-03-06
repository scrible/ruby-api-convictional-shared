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

# Unit tests for ConvictionalShared::UserApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UserApi' do
  before do
    # run before each test
    @api_instance = ConvictionalShared::UserApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserApi' do
    it 'should create an instance of UserApi' do
      expect(@api_instance).to be_instance_of(ConvictionalShared::UserApi)
    end
  end

  # unit tests for get_me
  # Get current user and company
  # An endpoint for fetching data related to the current user and company.
  # @param [Hash] opts the optional parameters
  # @return [AuthMe]
  describe 'get_me test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_user_by_id
  # Update user
  # An endpoint for partially updating users.
  # @param user_id ID of the user
  # @param [Hash] opts the optional parameters
  # @return [UserUpdate]
  describe 'patch_user_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_new_company_user
  # Invite user to company
  # An endpoint for adding a new user to an existing company.
  # @param onboarding_user_request An object containing company details
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'post_new_company_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for roll_user_api_key
  # Roll API key
  # An endpoint to roll the supplied API key.
  # @param user_id ID of the user
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse200]
  describe 'roll_user_api_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
