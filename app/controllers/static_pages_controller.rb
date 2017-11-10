class StaticPagesController < ApplicationController
  def home
    @dealers = Dealer.all
  end

  def about_us
  end
end
