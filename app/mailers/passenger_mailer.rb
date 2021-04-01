class PassengerMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def thank_you_email
    @passenger = params[:passenger]
    @url = 'http://example.com/bookings/id'
    mail(to: @passenger.email, subject: 'Thanks for booking')
  end
end
