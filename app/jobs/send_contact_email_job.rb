class SendContactEmailJob < ActiveJob::Base
  queue_as :email

  def perform(name, email, message)
    MessageMailer.new_message(name, email, message).deliver_now
  end
end
