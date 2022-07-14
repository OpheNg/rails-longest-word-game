require 'open-uri'
require 'json'

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

  def english
    url = "https://wagon-dictionary.herokuapp.com/#{@answer}"
    word_dictionary = open(url).read
    word = JSON.parse(word_dictionary)
    return word['found']
  end
end
