class Issue < ActiveRecord::Base
  belongs_to :computer
  belongs_to :technician
end