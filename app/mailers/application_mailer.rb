class ApplicationMailer < ActionMailer::Base
  default from: 'something@gmail.com'
  layout 'mailer'
end
