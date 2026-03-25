class SurveysController < ApplicationController
  def new
    @survey = HigeZentaiSurvey.new
  end

  def create
    @survey = HigeZentaiSurvey.new(survey_params)
    if @survey.save
      redirect_to thanks_surveys_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def thanks
  end

  private

  def survey_params
    params.require(:hige_zentai_survey).permit(
      :respondent_name,
      :q1_other,
      :q2_other,
      :q3_other,
      :q4,
      q1: [],
      q2: [],
      q3: []
    )
  end
end
