class OrdersController < ApplicationController
  before_filter :authenticate_request!
end
