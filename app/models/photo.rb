class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_attached_file :image, styles: { medium: "300x300>"}

  validates :title, :image, presence:true
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_attachment_size :image, :in =>  0..1.megabytes 
end
