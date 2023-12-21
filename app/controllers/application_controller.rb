# frozen_string_literal: true

class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token # For APIS and cors
  def hello
    render html: 'hello world'
  end
end
