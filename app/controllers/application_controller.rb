class ApplicationController < ActionController::Base
  # using null_session for APIs. Also stops CSRF attacks and creates an exception
  protect_from_forgery with: :null_session

  respond_to :json

  before_action :underscore_params!

  def underscore_params!
    params.deep_transform_keys!(&:underscore)
  end

end
