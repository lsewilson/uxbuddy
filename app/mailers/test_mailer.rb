class TestMailer < ApplicationMailer
  # default :from => 'no-reply@uxbuddy.herokuapp.com'

  def send_test_email(user, list, url)
    @url = url
    mail(to: list,
    from: user.email,
    subject: 'Please take our UX test!' )
  end

end
