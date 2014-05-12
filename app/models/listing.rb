class Listing < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "default.jpg"
  validates_attachment_content_type :image, :content_type => /\Aimage/
  validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]
end


