module Api
  module V1
    class ShopsController < ApplicationController
      def index
        shops = Shop.order('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded shops', data:shops},status: :ok
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
      private

      def shop_params
        params.permit(:title, :body)
      end
    end
  end
end
