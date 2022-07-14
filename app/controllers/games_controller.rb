class GamesController < ApplicationController
  def home
  end

  def new
    @letters = []
    10.times { @letters << ('A'..'Z').to_a.sample }
    @letters
  end

  def score
  end
end
