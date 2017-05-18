class Actor < ApplicationRecord
# - name: must be present; must be unique in combination with dob
  validates :name, :presence => true, :uniqueness => {:scope => :dob}


  has_many :characters

  has_many :movies, through: :characters



# - dob: no rules
# - bio: no rules
# - image_url: no rules
end
