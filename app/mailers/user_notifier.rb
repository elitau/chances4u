class UserNotifier < ActionMailer::Base
  default :from => "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.actionmailer.user_notifier.reset_password.subject
  #
  def password_reset_instructions(user)
    @user = user
    mail :to => user.email
  end
end
