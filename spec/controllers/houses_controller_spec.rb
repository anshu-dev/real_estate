require 'rails_helper'

RSpec.describe HousesController, type: :controller do
  describe 'GET #index' do
    before do
      get :index
    end

    it 'is expected to assign house instance variable' do
      expect(assigns[:houses]).to eq(House.all)
    end
  end

  # new action
  describe 'GET #new' do
    before do
      get :new
    end

    it 'is expected to assign house as new instance variable' do
      expect(assigns[:house]).to be_instance_of(House)
    end

    it 'renders new template' do
      is_expected.to render_template(:new)
    end

    it 'renders application layout' do
      is_expected.to render_template(:application)
    end
  end
end
