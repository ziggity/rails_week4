module Api::V1
  class ShopsController < ApplicationController

    def index
      if params[:random] === 'yes'
        @shop = Shop.get_random.as_json(root: true)
      elsif params[:title]
        @shop = Shop.search_by_business_name(params[:title]).as_json(root: true)
      elsif params[:body]
        @shop = Shop.search_by_zipcode(params[:zip]).as_json(root: true)
      else
        @shop = Shop.all.paginate(:page => params[:page], :per_page => 10).as_json(root: true)
      end
      json_response(@shop)
    end

    def show
      @shop = Shop.find(params[:id])
      json_response(@shop)
    end

    def create
      @shop = Shop.create!(shop_params)
      json_response(@shop)
    end

    def update
      @shop = Shop.find(params[:id])
      if @shop.update!(shop_params)
        render status: 200, json: {
          message: "Local Business updated"
        }
        end
      end

    def destroy
      @shop = Shop.find(params[:id])
      if @shop.destroy!
        render status: 200, json: {
          message: "Local Business deleted"
        }
      end
    end


  private
    def shop_params
      params.permit(:title,:body)
    end

  end
end
