# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PostsController do
  shared_examples 'public access to posts' do
    describe 'GET index' do
      let(:user) { FactoryBot.create(:user) }

      it 'renders :index template' do
        get :index
        expect(response).to render_template(:index) 
      end

      it 'assigns only public posts to template' do
        public_post = FactoryBot.create(:public_post, user: user)
        _private_post = FactoryBot.create(:private_post, user: user) 
        get :index
        expect(assigns(:posts)).to match_array([public_post])
      end
    end
  end

  describe 'guest user' do
    it_behaves_like 'public access to posts'
  end
end
