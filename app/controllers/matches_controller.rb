class MatchesController < ApplicationController

  def new
    @match = Match.new
    males = User.where("gender ILIKE 'male' AND account_type ILIKE 'MatchSeeker'")
    @male = males.sample
    females = User.where("gender ILIKE 'female' AND account_type ILIKE 'MatchSeeker'")
    @female = females.sample
  end

  def create

    @male = User.find(match_params["male"].to_i)
    @female = User.find(match_params["female"].to_i)
    @match = Match.new(male: @male, female: @female, match_maker: current_user)


    if @match.save
      redirect_to new_match_path
    else
      render :new, status: :unprocesssable_entity
    end
  end

  private

  def match_params
    params.require(:match).permit(:male, :female)
  end
end
