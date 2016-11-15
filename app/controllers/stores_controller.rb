class StoresController < ApplicationController
  before_action :authenticate

  def create
    store = Store.where(address: params[:address])
    puts  "HERE IS THE STORE"
    if !store.empty?
      puts "STORE EXISTS!!!!"
      render json: {status: 202, message: "Store exists!", store: store}
    else
      store = Store.new(store_params)
      if store.save
        render json: {status: 200, message: "ok", store: store}
      else
        render json: {status: 422, store: store, errors: store.errors }
      end
    end
  end

  private

    def token(id, username)
      JWT.encode(payload(id, username), ENV['JWT_SECRET'], 'HS256')
    end

    def payload(id, username)
      {
        exp: (Time.now + 1.day).to_i, # Expiration date 24 hours from now
        iat: Time.now.to_i,
        iss: ENV['JWT_ISSUER'],
        user: {
          id: id,
          username: username
        }
      }
    end

    def store_params
      params.required(:store).permit(:name, :address, :lat, :lng)
    end

end
