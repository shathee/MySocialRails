class GreetingsController < ApplicationController
  def hello
  	@users = User.last(5)
  end
end
