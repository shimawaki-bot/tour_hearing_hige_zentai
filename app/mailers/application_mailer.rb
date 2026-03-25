class ApplicationMailer < ActionMailer::Base
  default from: -> { ENV.fetch("SMTP_FROM", "onboarding@resend.dev") }
  layout "mailer"
end
