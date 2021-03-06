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
  class PartnerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List partners
    # An endpoint for getting partners.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page number of results to return. Note this is a zero-based index.
    # @option opts [Integer] :limit The number of results per page. Max is 250.
    # @option opts [Boolean] :completed Show partners who have completed the onboarding steps.
    # @option opts [Boolean] :show_onboarding_status Provide the getting started status within the partner. If false, partners[0].gettingStarted will be null.
    # @return [Object]
    def get_partners(opts = {})
      data, _status_code, _headers = get_partners_with_http_info(opts)
      data
    end

    # List partners
    # An endpoint for getting partners.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page number of results to return. Note this is a zero-based index.
    # @option opts [Integer] :limit The number of results per page. Max is 250.
    # @option opts [Boolean] :completed Show partners who have completed the onboarding steps.
    # @option opts [Boolean] :show_onboarding_status Provide the getting started status within the partner. If false, partners[0].gettingStarted will be null.
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def get_partners_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PartnerApi.get_partners ...'
      end
      # resource path
      local_var_path = '/partners'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'completed'] = opts[:'completed'] if !opts[:'completed'].nil?
      query_params[:'showOnboardingStatus'] = opts[:'show_onboarding_status'] if !opts[:'show_onboarding_status'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"PartnerApi.get_partners",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PartnerApi#get_partners\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update partner
    # An endpoint for partially updating partners.
    # @param partner_id [String] ID of the partner
    # @param partner_update [PartnerUpdate] 
    # @param [Hash] opts the optional parameters
    # @return [Partner]
    def patch_partner_by_id(partner_id, partner_update, opts = {})
      data, _status_code, _headers = patch_partner_by_id_with_http_info(partner_id, partner_update, opts)
      data
    end

    # Update partner
    # An endpoint for partially updating partners.
    # @param partner_id [String] ID of the partner
    # @param partner_update [PartnerUpdate] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Partner, Integer, Hash)>] Partner data, response status code and response headers
    def patch_partner_by_id_with_http_info(partner_id, partner_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PartnerApi.patch_partner_by_id ...'
      end
      # verify the required parameter 'partner_id' is set
      if @api_client.config.client_side_validation && partner_id.nil?
        fail ArgumentError, "Missing the required parameter 'partner_id' when calling PartnerApi.patch_partner_by_id"
      end
      # verify the required parameter 'partner_update' is set
      if @api_client.config.client_side_validation && partner_update.nil?
        fail ArgumentError, "Missing the required parameter 'partner_update' when calling PartnerApi.patch_partner_by_id"
      end
      # resource path
      local_var_path = '/partners/{partnerId}'.sub('{' + 'partnerId' + '}', CGI.escape(partner_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(partner_update)

      # return_type
      return_type = opts[:debug_return_type] || 'Partner'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"PartnerApi.patch_partner_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PartnerApi#patch_partner_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create partner
    # An endpoint for creating new partners. If you are a seller, please provide an email and price list ID. If you are a buyer, only an email is required.
    # @param partner_create [PartnerCreate] An object containing a partnership
    # @param [Hash] opts the optional parameters
    # @return [Partner]
    def post_partnership(partner_create, opts = {})
      data, _status_code, _headers = post_partnership_with_http_info(partner_create, opts)
      data
    end

    # Create partner
    # An endpoint for creating new partners. If you are a seller, please provide an email and price list ID. If you are a buyer, only an email is required.
    # @param partner_create [PartnerCreate] An object containing a partnership
    # @param [Hash] opts the optional parameters
    # @return [Array<(Partner, Integer, Hash)>] Partner data, response status code and response headers
    def post_partnership_with_http_info(partner_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PartnerApi.post_partnership ...'
      end
      # verify the required parameter 'partner_create' is set
      if @api_client.config.client_side_validation && partner_create.nil?
        fail ArgumentError, "Missing the required parameter 'partner_create' when calling PartnerApi.post_partnership"
      end
      # resource path
      local_var_path = '/partners'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(partner_create)

      # return_type
      return_type = opts[:debug_return_type] || 'Partner'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"PartnerApi.post_partnership",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PartnerApi#post_partnership\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
