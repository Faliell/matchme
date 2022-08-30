class MatchesController < ApplicationController

  def new
    males = User.where("gender ILIKE 'male' AND account_type ILIKE 'MatchSeeker'")
    @male = males.sample
    females = User.where("gender ILIKE 'female' AND account_type ILIKE 'MatchSeeker'")
    @female = females.sample
  end

  def create
  end
end
