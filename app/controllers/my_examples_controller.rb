class MyExamplesController < ApplicationController
  def show
    #render json: { message: "hello" }

    num = rand(1..3)
    fortune = ""
    if num == 1
      fortune = "Buy a lottery ticket!"
    elsif num = 2
      fortune = "Stay Quiet!"
    elsif num = 3
      fortune = "Avoid Water!"
    end

    #index = 1
    render json: { feature1: fortune,
                   feature2: [rand(1..60), rand(1..60), rand(1..60), rand(1..60), rand(1..60), rand(1..60)],
                   feature3: 0 }
    #index += 1
  end

  #def print_msg

  #render json: {value: 0}
  # end
end
