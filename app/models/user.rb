class User < ActiveRecord::Base

  #sets up database relationships
  has_many :reports

  # User automatically has getter and setter methods for the fields in the data table.
  # We can add our own methods here (to support the users_controller).

  def dance_and_sing
    return "tra laa laa!"
  end

end
