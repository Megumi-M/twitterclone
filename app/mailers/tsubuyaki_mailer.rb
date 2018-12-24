class TsubuyakiMailer < ApplicationMailer
  def tsubuyaki_mail(tsubuyaki)
    @tsubuyaki = tsubuyaki
    mail to: @tsubuyaki.user.email, subject: "投稿完了！！"
  end
end
