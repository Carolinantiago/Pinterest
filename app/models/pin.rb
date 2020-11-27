class Pin < ApplicationRecord
    belongs_to :user 

    has_attached_file :image, styles: { medium: "300x300>" }, validate_media_type: false
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
