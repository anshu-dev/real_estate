require 'rails_helper'

RSpec.describe CommercialUnit, type: :model do
  describe 'creation' do
    it 'can be created' do
      commercial_unit = CommercialUnit.create(owner: "Mike", address: "13 baker street", shops: 2, sqmt: 3000, parking: 2, price: 10000, manager_id: 1)
    end
  end
end
