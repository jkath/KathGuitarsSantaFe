class HomeController < ApplicationController
  layout 'homepage'
  
  def getphotoxml
    
    str = "<slide_show>"
    str += "<options>"
    str += "<background>transparent</background>"            
    str += "<interaction>"
    str += "<rotation>mouse</rotation>"            # auto, mouse, keyboard
    str += "<view_point>none</view_point>"        #none, mouse, keyboard
    str += "<speed>15</speed>"                     # [-360,360] degrees per second 
    str += "<default_view_point>0%</default_view_point>"  # [0,100] percentage
    str += "</interaction>"
    str += "</options>"
    

    str +=	"<photo href='/devonshiregallery' target='_self'>/images/devonshireguitar/P2120320-200.jpg</photo>"
    str +=	"<photo href='/devonshiregallery' target='_self'>/images/devonshireguitar/P2120323-200.jpg</photo>"
    str +=	"<photo href='/guitarpicslist' target='_self'>/system/guitar_pics/13/medium.jpg</photo>"
    str +=	"<photo href='/devonshiregallery' target='_self'>/images/devonshireguitar/P2120325-200.jpg</photo>"
    str +=	"<photo href='/guitarpicslist' target='_self'>/system/guitar_pics/15/medium.jpg</photo>"
    str +=	"<photo href='/devonshiregallery' target='_self'>/images/devonshireguitar/P2130326-200.jpg</photo>"
    str +=	"<photo href='/guitarpicslist' target='_self'>/system/guitar_pics/16/medium.jpg</photo>"
    str +=	"<photo href='/devonshiregallery' target='_self'>/images/devonshireguitar/P2130329-200.jpg</photo>"
    str +=	"<photo href='/devonshiregallery' target='_self'>/images/devonshireguitar/P2130333-200.jpg</photo>"
    str +=	"<photo href='/guitarpicslist' target='_self'>/system/guitar_pics/14/medium.jpg</photo>"
    str +=	"<photo href='/guitarpicslist' target='_self'>/system/guitar_pics/17/medium.jpg</photo>"
    str +=	"<photo href='/guitarpicslist' target='_self'>/system/guitar_pics/18/medium.jpg</photo>"
    str +=	"<photo href='/guitarpicslist' target='_self'>/system/guitar_pics/19/medium.jpg</photo>"


    str += "</slide_show>"

    render :text => str

  end

end
