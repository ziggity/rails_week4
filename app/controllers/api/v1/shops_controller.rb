module Api
  module V1
    class ShopsController < ApplicationController
      def index
        random = params[:random]
          if params[:random]
            if random == "true"
              shops = Shop.order("RANDOM()").limit(5)
            else
              shops = Shop.all
            end
          else
            shops = Shop.all
          end
        render json: {status: 'SUCCESS', message: 'Random shops', data:shops}, status: :ok
      end

      def show
        shop = Shop.find(params[:id])
        render json: {status: 'SUCCESS', message: 'Loaded shops', data:shop}, status: :ok
      end

      def create
        shop = Shop.new(shop_params)

        if shop.save
          render json: {status: 'SUCCESS', message: 'Saved shop', data:shop}, status: :ok
        else
          render json: {status: 'SUCCESS', message: 'Did not save shop', data:shop.errors}, status: :unprocessable_entity
      end
    end

    def destroy
      shop = Shop.find(params[:id])
      shop.destroy
      render json: {status: 'SUCCESS', message: 'Deleted shop', data:shop}, status: :ok
    end

    def update
      shop = Shop.find(params[:id])
      if shop.update_attributes(shop_params)
        render json: {status: 'SUCCESS', message: 'Updated shop', data:shop}, status: :ok
      else
        render json: {status: 'SUCCESS', message: 'Did not update shop', data:shop.errors}, status: :unprocessable_entity
      end
    end



      private

      def shop_params
        params.permit(:title, :body)
      end
    end
  end
end
