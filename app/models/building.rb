class Building < ActiveRecord::Base
    belongs_to :owner

  STATES = %w(MA NH FL TX CA)
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true, inclusion: {in: STATES}
  validates :postcode, presence: true
end
