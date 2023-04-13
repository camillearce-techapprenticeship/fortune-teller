class FortuneController < ApplicationController
  def horoscopes
    
    @the_sign = params.fetch("the_sign").to_sym

    all_zodiacs = Zodiac.list

    if all_zodiacs.keys.include?(@the_sign)
      this_zodiac = all_zodiacs.fetch(@the_sign)
      @horoscope = this_zodiac.fetch(:horoscope)

      @array_of_numbers = Array.new

      5.times do
        another_number = rand(1...100)

        @array_of_numbers.push(another_number)
      end

      render({ :template => "horoscope_templates/horoscope.html.erb" })
    else
      redirect_to("/404.html")
    end
  end
end

=begin
  def lion
    @horoscope = "Success on all levels is filling your life and making you feel absolutely wonderful, Leo. The downside of this is that you might be a little too conscientious. Are you putting in a lot of extra hours? Be discriminating about this and don't work harder than necessary. You could get stressed to the point of taxing your strength too much, and that won't help you. Pace yourself."

    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)

      @array_of_numbers.push(another_number)
    end

    render({ :template => "flame_interface/leo.html.erb" })
  end

  def archer
    @horoscope = "The high from your recent successes could make you want to purchase luxury items that you used to think were impractical, Sagittarius. This is fine as long as you're discriminating and don't give in to impulse buying. This also isn't a good time to overindulge in food or drink. You should let yourself enjoy your success while still using common sense."

    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)

      @array_of_numbers.push(another_number)
    end

    render({ :template => "flame_interface/sagittarius.html.erb" })
  end

=end
