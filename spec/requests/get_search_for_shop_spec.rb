
require 'rails_helper'

describe "get all shop route", :type => :request do
  let!(:shops) { FactoryGirl.create_list(:shop, 10)}

  before { get '/api/v1/shops'}

  it 'returns all local shops' do
    expect(JSON.parse(response.body).size).to eq(10)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end
