class System < ApplicationRecord
  validates :name, :radius, presence: true

  has_many :ships,
  foreign_key: :system_id,
  class_name: 'Ship',
  primary_key: :id
end
