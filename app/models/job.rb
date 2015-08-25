class Job < ActiveRecord::Base
  
  # Commenting out to play around with Rails Console
  # validates :title, presence: true
  
  belongs_to :contact
  belongs_to :company
end
