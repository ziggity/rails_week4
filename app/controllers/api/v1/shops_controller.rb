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
    end
  end
end