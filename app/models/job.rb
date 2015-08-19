class Job < ActiveRecord::Base
  
  validates :title, presence: true
  
  belongs_to :contact
  belongs_to :company
end
