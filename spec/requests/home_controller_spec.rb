# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HomeController, type: :request do
  describe 'GET #index' do
    it 'render index view' do
      get '/'

      expect(response).to render_template(:index)
    end
  end
end
