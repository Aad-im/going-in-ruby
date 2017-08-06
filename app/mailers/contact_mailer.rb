class ContactMailer < ActionMailer::Base
    default to: "app73856317@heroku.com"
    
    def contact_email(name,email, body)
        @name = name
        @email = email
        @body = body
        
        mail(from: 'app73856317@heroku.com',subject: "Contact Form Message")
    end
end