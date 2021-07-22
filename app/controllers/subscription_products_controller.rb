class SubscriptionProductsController < ApplicationController
 before_action :authenticate_user!
def index
  @subscriptions = SubscriptionProduct.all
end

def new
 @subscription = SubscriptionProduct.new
end

def create
    @subscription = SubscriptionProduct.new(subscription_params)
    if @subscription.save
    redirect_to subscription_products_path, :flash => { :success => "Plan Created Successfully" }
    else
    redirect_to new_subscription_products_path , :flash => { :success => "Plan Created Successfully" }
        
    end

end

def edit
    @subscription = SubscriptionProduct.find_by(id: params[:id])

end

def update
    @subscription = SubscriptionProduct.find_by(id: params[:id])
    if @subscription.update(subscription_params)
        redirect_to subscription_products_path, :flash => { :success => "Plan Updated Successfully" }
    else
        redirect_to new_subscription_products_path, :flash => {:error => "Something Went Wrong" }
    end
end
def delete
 debugger
end

def destroy

end
private
def subscription_params
    params.require(:subscription_product).permit(:plan_name, :price)
 end
end
