module API
  module v1
    class BusinessesController < ApplicationController
      def index
        @businesses = Business.order('created_at DESC');
        redner json: {status: 'SUCCESS', message:'Loaded businesses', data:businesses},status:ok
      end
    end
  end
end
