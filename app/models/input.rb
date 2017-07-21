class Input < ActiveRecord::Base

  #sets up database relationships
  belongs_to :report
  
  # Input automatically has getter and setter methods for the fields in the data table.
  # We can add our own methods here (to support the inputs_controller).


end
