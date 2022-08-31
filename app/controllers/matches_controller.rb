class MatchesController < ApplicationController

  def new
    @match = Match.new
    males = User.where("gender ILIKE 'male' AND account_type ILIKE 'MatchSeeker'")
    @male = males.sample
    females = User.where("gender ILIKE 'female' AND account_type ILIKE 'MatchSeeker'")
    @female = females.sample
  end

  def create
    @match = Match.new(match_params)
    @match.match_maker = current_user
    if @match.save
      redirect_to root_path
    else
      render :new, status: :unprocesssable_entity
    end
  end

  private

  def match_params
    params.require(:matches).permit(:male, :female)
  end
end
