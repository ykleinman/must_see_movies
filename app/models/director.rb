class Director < ApplicationRecord
  # Direct associations

  has_many   :filmography,
             :class_name => "Movie"

  # Indirect associations

  # Validations

  validates :name, :uniqueness => { :scope => [:dob] }

  validates :name, :presence => true

end
