require 'rails_helper'

RSpec.describe ComplexBuildingsController, type: :controller do
  describe 'GET #index' do
    before do
      get :index
    end

    it 'is expected to assign house instance variable' do
      expect(assigns[:complex_buildings]).to eq(ComplexBuilding.all)
    end
  end

  # new action
  describe 'GET #new' do
    before do
      get :new
    end

    it 'is expected to assign house as new instance variable' do
      expect(assigns[:complex_buildings]).to be_instance_of(ComplexBuilding)
    end

    it 'renders new template' do
      is_expected.to render_template(:new)
    end

    it 'renders application layout' do
      is_expected.to render_template(:application)
    end
  end
end
