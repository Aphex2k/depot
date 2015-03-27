class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    if(session[:indexCounter].nil?)
      session[:indexCounter] = 0;
    else
      session[:indexCounter] +=  1;
    end

    @index_counter_message = "Page was called #{session[:indexCounter]} times" if session[:indexCounter] > 5
  end
end
