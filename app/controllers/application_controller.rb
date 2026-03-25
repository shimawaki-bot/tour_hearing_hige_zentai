class ApplicationController < ActionController::Base
  allow_browser versions: :modern
  before_action :basic_auth

  # Changes to the importmap will invalidate the etag for HTML responses
  stale_when_importmap_changes

  private

  def basic_auth
    password = ENV["BASIC_AUTH_PASSWORD"]
    return unless password.present?
    authenticate_or_request_with_http_basic do |_user, p|
      ActiveSupport::SecurityUtils.secure_compare(p, password)
    end
  end
end
