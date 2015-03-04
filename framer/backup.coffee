# This imports all the layers for "Framer_Cards" into framer_cardsLayers2
document.body.style.cursor = "auto"



backgroundLayer = new Layer 
	x:0, y:0, width:640, height:1136, image:"images/Background_1.png"

	
buttonLayer = new Layer 
	x:0, y:0, width:172, height:172, 
buttonLayer.center()
buttonLayer.borderRadius = 3
buttonLayer.borderRadius = buttonLayer.width/2
buttonLayer.backgroundColor = "#76CDB6"

cardLayer1 = new Layer 
	x:640, y:180, width:504, height:736, image:"images/Card.png"	
cardLayer1.draggable.enabled = true
cardLayer1.draggable.speedY = 0

cardLayer2 = new Layer 
	x:640, y:180, width:504, height:736, image:"images/Card.png"	
cardLayer2.draggable.enabled = true
cardLayer2.draggable.speedY = 0

Nav = new Layer 
	x:0, y:-140, width:640, height:128, image:"images/Background.png"

buttonLayer.on Events.Click, ->
	buttonLayer.animate
		properties: {width:640, height:1136, borderRadius:0, x:0, y:0}
		curve: "spring(600,20,0)"
	cardLayer1.animate
		properties:{x:60}
		curve: "spring(400,10,0)"
	cardLayer2.animate
		properties:{x:-100}
		curve: "spring(400,10,0)"
	Nav.animate
		properties:{y:0}
		curve: "spring(400,30,0)"
		delay:0.5

# Center it again on resizing the screen
window.onresize = -> buttonLayer.center()
window.onresize = -> cardLayer.center()



