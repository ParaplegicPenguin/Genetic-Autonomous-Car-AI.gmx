draw_set_color(c_ltgray);
// Evol Stats
var n = (RoomH/2);
draw_text(0,n,"Evol Stats"); n+=12;
draw_text(0,n,"Evol Width: "+string(BodyW)); n+=12;
draw_text(0,n,"Evol Height: "+string(BodyH)); n+=12;
draw_text(0,n,"Evol Mass: "+string(Mass)); n+=12;
draw_text(0,n,"Evol Thrust: "+string(Thrust)); n+=12;
draw_text(0,n,"Evol Acceleration: "+string(Acceleration)); n+=12;
draw_text(0,n,"Evol Speed: "+string(speed)); n+=12;
draw_text(0,n,"Evol Brakes: "+string(Brakes)); n+=12;
draw_text(0,n,"Evol Life Length: "+string(LifeLength)); n+=12;
draw_text(0,n,"Evol Travel Distance: "+string(TravelDistance)); n+=12;
draw_text(0,n,"Evol Fitness: "+string(Fitness)); n+=12;
