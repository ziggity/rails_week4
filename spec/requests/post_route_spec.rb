require 'rails_helper'

describe "post a shop route", :type => :request do

  before do
    post '/api/v1/shops', params: { :title => "Test shop name",
    :body => "Lorem Ipsum"}
  end

  it 'returns the shop name' do
    expect(JSON.parse(response.body)['title']).to eq('Test shop name')
  end

  it 'returns a success status' do
    expect(response).to have_http_status(:success)
  end
end
