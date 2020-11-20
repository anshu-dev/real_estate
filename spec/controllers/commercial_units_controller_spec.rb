require 'rails_helper'

RSpec.describe CommercialUnitsController, type: :controller do
  describe 'GET #index' do
    before do
      get :index
    end

    it 'is expected to assign house instance variable' do
      expect(assigns[:commercial_units]).to eq(CommercialUnit.all)
    end
  end

  # new action
  describe 'GET #new' do
    before do
      get :new
    end

    it 'is expected to assign house as new instance variable' do
      expect(assigns[:commercial_unit]).to be_instance_of(CommercialUnit)
    end

    it 'renders new template' do
      is_expected.to render_template(:new)
    end

    it 'renders application layout' do
      is_expected.to render_template(:application)
    end
  end
end
