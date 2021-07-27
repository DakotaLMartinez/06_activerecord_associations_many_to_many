class Technician < ActiveRecord::Base
  has_many :issues
  has_many :computers, through: :issues
end