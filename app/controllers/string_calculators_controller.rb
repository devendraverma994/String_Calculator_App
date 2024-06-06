class StringCalculatorsController < ApplicationController
  def new
    @result = params[:result]
    @error = params[:error]
  end
end
