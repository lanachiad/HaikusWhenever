class HaikusController < ApplicationController
  def index
    @user = current_user
    @haikus = Haiku.all
  end

  def new
    @user = current_user
    @haiku = Haiku.new
  end

  def create
    @haiku = current_user.haikus.new(haiku_params)

    if @haiku.save
      redirect_to haikus_path
    else
      @errors = @haiku.errors.full_messages
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  require 'pry'
  require 'pry-byebug'

  # def first_line_checker(string)
  #   split_line = string.split(' ')
  #   vowels = ['a', 'e', 'i', 'o', 'u']
  #   syllables = 0
  #   split_line.each do |word|
  #     vowel_counter(word, vowels, syllables)
  #   end
  #   p syllables
  # end

  # This is going to be a model

  def vowel_counter(string, vowels_array, syllable_counter)
    string_by_word = string.split(' ')
    p string_by_word
    string_by_word.each do |word|
      p word
      vowels_array.each do |char|
        syllable_counter += word.count(char)
      end
      binding.pry
      # if word ends in E
      if word[-1] === 'e'
        syllable_counter -= 1
      end
      # if word ends in ES
      if word[-1] === 's'
        if word[-2] === 'e'
          syllable_counter -= 1
        end
      end
      # if word has 'AE'
      if word.include?('ae')
        syllable_counter -= 1
      end
      # if word has 'AI'
      if word.include?('ai')
        syllable_counter -= 1
      end
      # if word has 'DGE'
      if word.include?('dge')
        syllable_counter -= 1
      end
      # if word has 'EA'
      if word.include?('ea')
        syllable_counter -= 1
      end
      # if word has 'EI'
      if word.include?('ei')
        syllable_counter -= 1
      end
      # if word has 'GE'
      if word.include?('ge')
        syllable_counter -= 1
      end
      # if word has 'IE'
      if word.include?('ie')
        syllable_counter -= 1
      end
      # if word has 'OA'
      if word.include?('oa')
        syllable_counter -= 1
      end
      # if word has 'OI'
      if word.include?('oi')
        syllable_counter -= 1
      end
      # if word has 'OU'
      if word.include?('ou')
        syllable_counter -= 1
      end
    end
    # remove 21
    p syllable_counter
  end


  private
  def haiku_params
    params.require(:haiku).permit(:title,:first_line,:second_line, :third_line, :user_id)
  end
end
