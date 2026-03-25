class SurveyMailer < ApplicationMailer
  def notification(survey)
    @survey = survey
    mail(
      to: "shimawaki@bodydirector.com",
      subject: "【ヒアリング回答】#{survey.respondent_name} さんから回答が届きました"
    )
  end
end
