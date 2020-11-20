require 'rails_helper'

RSpec.describe ComplexBuilding, type: :model do
  describe 'creation' do
    it 'can be created' do
      complex_building = ComplexBuilding.create(owner: "David", address: "13 baker street", units: 2, sqmt: 3000, price: 10000, manager_id: 1)
    end
  end
end
