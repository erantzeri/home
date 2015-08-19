class Contact < ActiveRecord::Base
  
  validates :first_name, presence: true
  
  has_many :jobs
  has_many :companies, :through => :jobs
  
end
