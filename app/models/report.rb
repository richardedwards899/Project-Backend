class Report < ActiveRecord::Base

  # Report automatically has getter and setter methods for the fields in the data table.
  # We can add our own methods here (to support the reports_controller).

  belongs_to :user

  has_many :inputs

end
