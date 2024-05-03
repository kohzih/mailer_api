class IndexController < ActionController::Base
  def index
    render json: { message: 'Hello, World!' }
  end
end
