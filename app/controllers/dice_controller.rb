class DiceController < ApplicationController
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
end
