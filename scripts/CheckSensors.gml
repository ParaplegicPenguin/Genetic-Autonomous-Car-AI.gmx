var SensorCount = argument0;

for(var s=0;s<SensorCount;s++) {
  var x1 = Sensor_x1[s];
  var y1 = Sensor_y1[s];
  var x2 = Sensor_x2[s];
  var y2 = Sensor_y2[s];
  
  switch(SensorAction[0]) {
    case Action.TurnLeft:
      var Col = collision_line(x1,y1,x2,y2,NoPass,true,false);
      if (Col) {
        image_angle += speed;
        show_debug_message("TurnLeft Triggered...");
        show_debug_message("...");
        Collision = true;
      }
    break;
    
    case Action.TurnRight:
      var Col = collision_line(x1,y1,x2,y2,NoPass,true,false);
      if (Col) {
        image_angle -= speed;
        show_debug_message("TurnRight Triggered...");
        show_debug_message("...");
        Collision = true;
      }
    break;
    
    case Action.Brakes:
      var Col = collision_line(x1,y1,x2,y2,NoPass,true,false);
      if (Col) {
        speed = 0;
        show_debug_message("Brakes Triggered...");
        show_debug_message("...");
        Collision = true;
        show_debug_message(string(x1));
        show_debug_message(string(y1));
        show_debug_message(string(x2));
        show_debug_message(string(y2));
      }
    break;
  }
}
