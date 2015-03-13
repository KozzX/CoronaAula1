local quadrado = display.newRect( display.contentCenterX,display.contentCenterY,100,100 )
local circulo = display.newCircle( display.contentCenterX/2,display.contentCenterY/2,10 )

function mover( event )
	transition.moveTo( quadrado, {x=event.x, y=event.y, time=1000} )
	transition.moveTo( circulo, {x=event.x, y=event.y, time=1000} )
	quadrado:setFillColor( math.random(0,1),math.random(0,1),math.random(0,1) )
	circulo:setFillColor( math.random(0,1),math.random(0,1),math.random(0,1) )
	print( "Mover para:",event.x,event.y )
end
Runtime:addEventListener( "tap", mover )
