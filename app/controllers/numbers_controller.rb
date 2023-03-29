class NumbersController < ApplicationController
  def winners
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100)

      @zebra.push(giraffe)
    end

    render({ :template => "lottery_stuff/woohoo.html.erb" })
  end

  def losers
    @unluckynumbers = Array.new
    5.times do
      giraffe = rand(1...100)

      @unluckynumbers.push(giraffe)
    end
    render({ :template => "lottery_stuff/notwoohoo.html.erb" })
  end
end
