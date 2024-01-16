require_relative 'scraper.rb'
require_relative 'country.rb'
require_relative 'state.rb'

class CLI
  # run
  def run
    Scraper.scrape_data
    greeting
    while menu != 'exit'
    end
    end_program
  end

  # greeting
  def greeting
    puts 'Welcome to the USA Covid 19 Tracker'
  end

  # end program
  def end_program
    puts 'Thank you for using the USA Covid 19 Tracker.'
  end

  # menu
  def menu
    list_options
    input = gets.chomp.downcase
    choose_option(input)
    input
  end

  # list of options
  def list_options
    puts '1. List all states '
    puts '2. List top ten states with the most confirmed cases'
    puts '3. Print USA information'
    puts '4. List top 10 states with the most deaths'
    puts "Exit the program by entering 'exit'"
  end

  def choose_option(option)
    case option
    when '1'
      puts 'Listing all states...'
      State.all.each do |state|
        puts "----------"
        puts "Name: #{state.name}"
        puts "Cases: #{state.confirmed_cases}"
        puts "Deaths: #{state.overall_deaths}"
        puts "Recoveries: #{state.recoveries}"
        puts "----------"
      end
    when '2'
      puts 'Listing top ten states with the most confirmed cases...'
      State.all[0..9].each_with_index do |state, i|
        puts "#{i + 1}. #{state.name} - #{state.confirmed_cases}"
      end

    when '3'
      puts "Print USA information"
      country = Country.first
      puts country.name
      puts country.confirmed_cases
      puts country.overall_deaths
      puts country.recoveries

    when '4'
      puts "Listing top ten states with the most deaths..."
      sort_states = State.all.sort_by { |state| state.overall_deaths.gsub(/,/, '').to_i }
      sort_states[0..9].each_with_index do |state, i|
        puts "#{i + 1}. #{state.name} - #{state.overall_deaths}"
      end
    end
  end
end
