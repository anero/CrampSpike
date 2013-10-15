require 'pry'

class TimeAction < Cramp::Action
  on_start :connected
  on_finish :disconnected
  on_data :send_new_time

  def connected
    puts 'Client connected'
  end

  def disconnected
    puts 'Client disconnected'
  end

   # periodic_timer :send_new_time, :every => 1

   def send_new_time(data)
    puts 'Received new data'

    render "Time is: #{DateTime.now}"
   end
end