class Post < ApplicationRecord
  has_attached_file :image, styles: { thumbnail: "32x32", small: "64x64", med: "100x100", large: "200x200" }, :default_url => 'sunset.jpg'
end
