require 'rails_helper'

RSpec.describe ProductCategory, type: :model do
  describe 'DB Table' do
    it { is_expected.to have_db_column :name}
    it { is_expected.to have_many :products}
    it { is_expected.to belong_to :restaurant}
    it { is_expected.to belong_to :menu}
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name}
  end

  describe 'Factory' do
    it 'should be valid' do
      expect(FactoryBot.create(:product_category)).to be_valid
    end
  end
end
