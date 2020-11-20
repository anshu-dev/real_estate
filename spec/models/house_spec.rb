require 'rails_helper'

RSpec.describe House, type: :model do
  describe 'creation' do
    it 'can be created' do
      house = House.create(owner: "John", address: "78 baker street", rooms: 2, sqmt: 3000, floors: 5, air_cond: 'true',  price: 10000, manager_id: 1)
    end
  end
end
