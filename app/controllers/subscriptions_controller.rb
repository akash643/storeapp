class SubscriptionsController < ApplicationController
  before_action :authenticate_user!
 
  def index
    # debugger
    @subscription_plan = SubscriptionProduct.all
    
  end

  def submit
    
  end
end
