class DiceController < ApplicationController

=begin
  def dice_1d6
    render({ :template => "dice_templates/1d6.html.erb" })
  end

  def dice_2d6
    render({ :template => "dice_templates/2d6.html.erb" })
  end

  def dice_3d6
    render({ :template => "dice_templates/3d6.html.erb" })
  end

  def dice_4d6
    render({ :template => "dice_templates/4d6.html.erb" })
  end

  def dice_5d6
    render({ :template => "dice_templates/5d6.html.erb" })
  end

  def dice_6d6
    render({ :template => "dice_templates/6d6.html.erb" })
  end

  def dice_1d4
    render({ :template => "dice_templates/1d4.html.erb" })
  end

  def dice_2d4
    render({ :template => "dice_templates/2d4.html.erb" })
  end

  def dice_3d4
    render({ :template => "dice_templates/2d4.html.erb" })
  end
=end
  def infinity_and_beyond
    @num_dice = params.fetch("number_of_dice")
    @num_faces = params.fetch("number_of_sides")

    @array_of_rolls = Array.new

    @num_dice.to_i.times do
      @array_of_rolls.push(rand(@num_faces.to_i) + 1)
    end

    render({ :template => "dice_templates/infinity.html.erb" })
  end
end
