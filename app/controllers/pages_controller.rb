class PagesController < ApplicationController

	#http_basic_authenticate_with :name => "bibframe", :password => "letsdoit"

  before_filter :authenticate

  def home
  end

  def about
  end

  protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
    	md5_of_password = Digest::MD5.hexdigest(password)
      username == "bibframe" && md5_of_password == "f35bd902a69ee87bdca2f40603c0b747"
    end
  end

end
