class Student < ActiveRecord::Base
  validates :first_name, :last_name, :email, :cell_phone, :home_phone, :work_phone, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates_format_of :cell_phone, :home_phone, :work_phone, :with =>  /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/
end
