# Preview all emails at http://localhost:3000/rails/mailers/notice_mailer
class NoticeMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notice_mailer/sendmail_confirm
  def sendmail_confirm
    user = User.find(6)
    NoticeMailer.with(user: user).sendmail_confirm
  end

end
