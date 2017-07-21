module Api
  module V1
    class ShopsController < ApplicationController
      def index
        shops = Shop.order('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded shops', data:shops},status: :ok
      end
    end
  end
end
