=begin
#Shared API

#Convictional is the first B2B trade enablement network. This API allows developers to build on our seller and buyer capabilities. This API is unstable, meaning the endpoints could be added, updated or removed without notice. We intend to make backwards incompatible changes in the future, and will make best efforts to notify you in the event of your usage of impacted endpoints. If you plan to build on this API, please contact us for recommendations via support@convictional.com.

The version of the OpenAPI document: v2021-01-01
Contact: support@convictional.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1

=end

require 'cgi'

module ConvictionalShared
  class UserApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get current user and company
    # An endpoint for fetching data related to the current user and company.
    # @param [Hash] opts the optional parameters
    # @return [AuthMe]
    def get_me(opts = {})
      data, _status_code, _headers = get_me_with_http_info(opts)
      data
    end

    # Get current user and company
    # An endpoint for fetching data related to the current user and company.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthMe, Integer, Hash)>] AuthMe data, response status code and response headers
    def get_me_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.get_me ...'
      end
      # resource path
      local_var_path = '/auth/me'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AuthMe'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"UserApi.get_me",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#get_me\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update user
    # An endpoint for partially updating users.
    # @param user_id [String] ID of the user
    # @param [Hash] opts the optional parameters
    # @return [UserUpdate]
    def patch_user_by_id(user_id, opts = {})
      data, _status_code, _headers = patch_user_by_id_with_http_info(user_id, opts)
      data
    end

    # Update user
    # An endpoint for partially updating users.
    # @param user_id [String] ID of the user
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserUpdate, Integer, Hash)>] UserUpdate data, response status code and response headers
    def patch_user_by_id_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.patch_user_by_id ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UserApi.patch_user_by_id"
      end
      # resource path
      local_var_path = '/users/{userId}'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'UserUpdate'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"UserApi.patch_user_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#patch_user_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Invite user to company
    # An endpoint for adding a new user to an existing company.
    # @param onboarding_user_request [OnboardingUserRequest] An object containing company details
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def post_new_company_user(onboarding_user_request, opts = {})
      post_new_company_user_with_http_info(onboarding_user_request, opts)
      nil
    end

    # Invite user to company
    # An endpoint for adding a new user to an existing company.
    # @param onboarding_user_request [OnboardingUserRequest] An object containing company details
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def post_new_company_user_with_http_info(onboarding_user_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.post_new_company_user ...'
      end
      # verify the required parameter 'onboarding_user_request' is set
      if @api_client.config.client_side_validation && onboarding_user_request.nil?
        fail ArgumentError, "Missing the required parameter 'onboarding_user_request' when calling UserApi.post_new_company_user"
      end
      # resource path
      local_var_path = '/onboarding/user/invite'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(onboarding_user_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"UserApi.post_new_company_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#post_new_company_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Roll API key
    # An endpoint to roll the supplied API key.
    # @param user_id [String] ID of the user
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse200]
    def roll_user_api_key(user_id, opts = {})
      data, _status_code, _headers = roll_user_api_key_with_http_info(user_id, opts)
      data
    end

    # Roll API key
    # An endpoint to roll the supplied API key.
    # @param user_id [String] ID of the user
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def roll_user_api_key_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.roll_user_api_key ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UserApi.roll_user_api_key"
      end
      # resource path
      local_var_path = '/users/{userId}/roll'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"UserApi.roll_user_api_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#roll_user_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
