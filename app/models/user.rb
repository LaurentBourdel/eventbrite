class User < ApplicationRecord

	puts "SENDGRID_USERNAME: #{ENV['SENDGRID_USERNAME']}"
	puts "SENDGRID_PASSWORD: #{ENV['SENDGRID_PASSWORD']}"
	after_create :welcome_send

	has_many :attendances
  has_many :events, through: :attendances

  def welcome_send
  UserMailer.welcome_email(self).deliver_now
  end

end
