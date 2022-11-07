# == Schema Information
#
# Table name: items
#
#  id         :bigint           not null, primary key
#  name       :string
#  active     :boolean
#  borrowed   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  item_type  :integer          default("other"), not null


describe Item, type: :model do
  describe 'columns' do
    it { is_expected.to have_db_column(:name).of_type(:string)}
    it { is_expected.to have_db_column(:active).of_type(:boolean)}
    it { is_expected.to have_db_column(:borrowed).of_type(:boolean)}
    it { is_expected.to have_db_column(:item_type).of_type(:integer)}
    it { is_expected.to have_db_column(:created_at).of_type(:datetime)}
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime)}
  end
end