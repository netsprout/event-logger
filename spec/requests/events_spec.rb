# spec/requests/events_spec.rb
require 'rails_helper'

RSpec.describe 'Events API', type: :request do
  # initialize test data
  let!(:events) { create_list(:event, 10) }

  # Test suite for GET /events
  describe 'GET /events' do
    # make HTTP get request before each example
    before { get '/events' }

    it 'returns events' do
      expect(JSON.parse(response.body)).not_to be_empty
      expect(JSON.parse(response.body).size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

#  # Test suite for GET /events/:id
#  describe 'GET /events/:id' do
#    before { get "/events/#{event_id}" }
#
#    context 'when the record exists' do
#      it 'returns the event' do
#        expect(json).not_to be_empty
#        expect(json['id']).to eq(event_id)
#      end
#
#      it 'returns status code 200' do
#        expect(response).to have_http_status(200)
#      end
#    end
#
#    context 'when the record does not exist' do
#      let(:event_id) { 100 }
#
#      it 'returns status code 404' do
#        expect(response).to have_http_status(404)
#      end
#
#      it 'returns a not found message' do
#        expect(response.body).to match(/Couldn't find event/)
#      end
#    end
#  end
#
#  # Test suite for POST /events
#  describe 'POST /events' do
#    # valid payload
#    let(:valid_attributes) { { title: 'Learn Elm', created_by: '1' } }
#
#    context 'when the request is valid' do
#      before { post '/events', params: valid_attributes }
#
#      it 'creates a event' do
#        expect(json['title']).to eq('Learn Elm')
#      end
#
#      it 'returns status code 201' do
#        expect(response).to have_http_status(201)
#      end
#    end
#
#    context 'when the request is invalid' do
#      before { post '/events', params: { title: 'Foobar' } }
#
#      it 'returns status code 422' do
#        expect(response).to have_http_status(422)
#      end
#
#      it 'returns a validation failure message' do
#        expect(response.body)
#          .to match(/Validation failed: Created by can't be blank/)
#      end
#    end
#  end
#
#  # Test suite for PUT /events/:id
#  describe 'PUT /events/:id' do
#    let(:valid_attributes) { { title: 'Shopping' } }
#
#    context 'when the record exists' do
#      before { put "/events/#{event_id}", params: valid_attributes }
#
#      it 'updates the record' do
#        expect(response.body).to be_empty
#      end
#
#      it 'returns status code 204' do
#        expect(response).to have_http_status(204)
#      end
#    end
#  end
#
#  # Test suite for DELETE /events/:id
#  describe 'DELETE /events/:id' do
#    before { delete "/events/#{event_id}" }
#
#    it 'returns status code 204' do
#      expect(response).to have_http_status(204)
#    end
#  end
end
