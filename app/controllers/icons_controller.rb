class IconsController < ApplicationController
  def generate
    @dog = Dog.find(2)
    #svg = '<svg xmlns="http://www.w3.org/2000/svg" width="400" height="40" viewBox="0 0 400 40"><path fill="#303133" d="M11.547 40L0 20 11.547 0h360.467v40z"/>
    #<text font-family="Lato, HelveticaNeue, Helvetica Neue, Helvetica, Arial, sans-serif" font-size="20" fill="#E8E8E8" x="77" y="27"> <%= @dog.name %></text>  
    #<text font-family="Lato, HelveticaNeue, Helvetica Neue, Helvetica, Arial, sans-serif" font-size="20" fill="#E8E8E8" x="200" y="27"> <%= @dog.motto %></text>  
    
    #<text font-family="Lato, HelveticaNeue, Helvetica Neue, Helvetica, Arial, sans-serif" font-size="14" fill="#ECB613" x="32" y="18.77" text-anchor="middle" transform="translate(7 6)">5 kyu</text>
    #</svg>'

    svg= '<svg width="270.933mm" height="30.1625mm"
     xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"  version="1.2" baseProfile="tiny">
    <desc>Created by EvoPdf</desc>
    <defs>
    </defs>
    <g fill="none" stroke="black" stroke-width="1" fill-rule="evenodd" stroke-linecap="square" stroke-linejoin="bevel" >
    
    <g fill="#000000" fill-opacity="1" stroke="#000000" stroke-opacity="1" stroke-width="1" stroke-linecap="square" stroke-linejoin="miter" stroke-miterlimit="2" transform="matrix(1,0,0,1,0,0)"
    >
    </g>
    
    <g fill="#000000" fill-opacity="1" stroke="#000000" stroke-opacity="1" stroke-width="1" stroke-linecap="square" stroke-linejoin="miter" stroke-miterlimit="2" transform="matrix(1,0,0,1,0,0)"
    >
    </g>
    
    <g fill="#000000" fill-opacity="1" stroke="#000000" stroke-opacity="1" stroke-width="1" stroke-linecap="square" stroke-linejoin="miter" stroke-miterlimit="2" transform="matrix(1,0,0,1,0,0)"
    >
    </g>
    
    <g fill="#0000ff" fill-opacity="1" stroke="none" transform="matrix(1,0,0,1,0,0)"
    >
    <path vector-effect="none" fill-rule="evenodd" d="M8,8 L1016,8 L1016,106 L8,106 L8,8"/>
    </g>
    
    <g fill="#000000" fill-opacity="1" stroke="#000000" stroke-opacity="1" stroke-width="1" stroke-linecap="square" stroke-linejoin="bevel" transform="matrix(1,0,0,1,0,0)"
    >
    <text fill="#000000" fill-opacity="1" stroke="none" xml:space="preserve" x="8" y="37" font-family="Times New Roman" font-size="32" font-weight="700" font-style="normal" 
     >Coucou</text>
    </g>
    
    <g fill="#000000" fill-opacity="1" stroke="#000000" stroke-opacity="1" stroke-width="1" stroke-linecap="square" stroke-linejoin="bevel" transform="matrix(1,0,0,1,0,0)"
    >
    <text fill="#000000" fill-opacity="1" stroke="none" xml:space="preserve" x="8" y="81" font-family="Times New Roman" font-size="16" font-weight="400" font-style="normal" 
     ><%= @dog.motto %></text>
    </g>
    
    <g fill="#000000" fill-opacity="1" stroke="#000000" stroke-opacity="1" stroke-width="1" stroke-linecap="square" stroke-linejoin="bevel" transform="matrix(1,0,0,1,0,0)"
    >
    <text fill="#000000" fill-opacity="1" stroke="none" xml:space="preserve" x="8" y="101" font-family="Times New Roman" font-size="16" font-weight="400" font-style="normal" 
     >Le restau &lt;%=@titre%&gt;</text>
    </g>
    
    <g fill="#000000" fill-opacity="1" stroke="#000000" stroke-opacity="1" stroke-width="1" stroke-linecap="square" stroke-linejoin="miter" stroke-miterlimit="2" transform="matrix(1,0,0,1,0,0)"
    >
    </g>
    
    <g fill="#000000" fill-opacity="1" stroke="#000000" stroke-opacity="1" stroke-width="1" stroke-linecap="square" stroke-linejoin="miter" stroke-miterlimit="2" transform="matrix(1,0,0,1,0,0)"
    >
    </g>
    
    <g fill="#000000" fill-opacity="1" stroke="#000000" stroke-opacity="1" stroke-width="1" stroke-linecap="square" stroke-linejoin="miter" stroke-miterlimit="2" transform="matrix(1,0,0,1,0,0)"
    >
    </g>
    </g>
    </svg>'
    

    respond_to do |format|
      format.svg { render inline: svg}
    end
  end

  def test
    @title = "Mon restau"
    @goodmeal = "Good Meal"
  end

end