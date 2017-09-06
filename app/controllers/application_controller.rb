class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render text: "Hello, this is the sample app!"
  end
end
