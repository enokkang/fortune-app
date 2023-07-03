class BottlesController < ApplicationController
  def bottles
    #render json: { message: "bottles" }
    #render json: { message2: "bottles" }

    #create a array or hash and put outputs in array and call those array with render json

    array = []

    text = ""

    num = 99
    100.times do
      if num == 1
        array << "#{num.to_s} bottles of beer on the wall, #{num.to_s} botles of beer.\nTake one down and pass it around, no more bottles of beer on the wall."

        text = text + "<p>#{num.to_s} bottles of beer on the wall, #{num.to_s} botles of beer.<br>Take one down and pass it around, no more bottles of beer on the wall.<br></p>"

        num = num - 1
      elsif num == 0
        array << "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall."

        text = text + "<p>No more bottles of beer on the wall, no more bottles of beer.<br>Go to the store and buy some more, 99 bottles of beer on the wall.<br></p>"
      elsif num > 1
        array << "#{num.to_s} bottles of beer on the wall, #{num.to_s} bottles of beer.\nTake one down and pass it around, #{(num - 1).to_s} bottles of beer on the wall."

        text = text + "<p>#{num.to_s} bottles of beer on the wall, #{num.to_s} bottles of beer.<br>Take one down and pass it around, #{(num - 1).to_s} bottles of beer on the wall.<br></p>"

        num = num - 1
      end
    end

    #render json: { bottles: array }

    render inline: "<html><body><h4><i>" + text + "</h4></body></html>"
  end
end
