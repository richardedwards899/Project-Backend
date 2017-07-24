class Report < ActiveRecord::Base

  #sets up database relationships
  belongs_to :original_user
  has_many :inputs

  # Report automatically has getter and setter methods for the fields in the data table.
  # We can add our own methods here (to support the reports_controller).


end
