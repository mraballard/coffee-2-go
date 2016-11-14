class ItemsController < ApplicationController

  def index
    items = Item.all;
    render json: {status: 200, message: "OK", items: items}
  end

end
