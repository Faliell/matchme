class MatchesController < ApplicationController

  def new
    @match = Match.new
    males = User.where("gender ILIKE 'male' AND account_type ILIKE 'MatchSeeker'")
    #already_matched = current_user.match_maker_matches.wjere.map(&:male)
    @male = males.sample
    females = User.where("gender ILIKE 'female' AND account_type ILIKE 'MatchSeeker'")
    @female = females.sample
  end

  def female
    females = User.where("gender ILIKE 'female' AND account_type ILIKE 'MatchSeeker'")
    @female = females.sample
    render json: { female: @female, photo: @female.photo.key }
  end

  def male
    males = User.where("gender ILIKE 'male' AND account_type ILIKE 'MatchSeeker'")
    @male = males.sample
    render json: { male: @male, photo: @male.photo.key }
  end

  def create

    @male = User.find(match_params["male"].to_i)
    @female = User.find(match_params["female"].to_i)
    @match = Match.new(male: @male, female: @female, match_maker: current_user)


    if @match.save
      count_match
      redirect_to new_match_path
    else
      render :new, status: :unprocesssable_entity
    end
  end

  def count_match
    founded_matches = Match.where(male: @male, female: @female)
    counter = founded_matches.count
    Chatroom.create(male: @male, female: @female)
    if counter == 1
      founded_matches.each do |match|

        match.update!(status: "match")
        result = (match.match_maker.points).to_i + 10
        match.match_maker.update!(points: result)
      end
    end
  end

  private

  def match_params
    params.require(:match).permit(:male, :female)
  end
end
