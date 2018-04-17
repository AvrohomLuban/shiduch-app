class Profile < ApplicationRecord
  has_attached_file :image
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  has_attached_file :resume
  validates_attachment :resume, content_type: { content_type: [
            "application/pdf",
            "application/vnd.ms-excel",     
            "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
            "application/msword", 
            "application/vnd.openxmlformats-officedocument.wordprocessingml.document", 
            "text/plain"] }
            
  belongs_to :user

end
