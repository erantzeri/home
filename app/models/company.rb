class Company < ActiveRecord::Base
  
  validates :name, presence: true
  
  has_many :jobs
  has_many :contacts, :through => :jobs
  
end
