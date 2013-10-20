class StaticpagesController < ApplicationController
  
    def getbluesvideos
      
      render :text => "My Great Video~http://www.kathguitars.com/videos/BluesBayou.mp4"
      
    end
    
end
