class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def time_conversion
    "#{self.appointment_datetime.strftime("%B")} #{self.appointment_datetime.strftime("%d")}, #{self.appointment_datetime.strftime("%Y")} at #{self.appointment_datetime.strftime("%H")}:#{self.appointment_datetime.strftime("%M")}"
  end
end
