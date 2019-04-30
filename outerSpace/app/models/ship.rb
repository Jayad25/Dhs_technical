class Ship < ApplicationRecord
  validates :name, :velocity, presence: true
  belongs_to :system,
  class_name: 'System',
  foreign_key: :system_id,
  primary_key: :id
end
