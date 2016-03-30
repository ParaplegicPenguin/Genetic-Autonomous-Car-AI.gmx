///DrawSensors(number of sensors)
//
//  draws sensors
//
//  Last edited 03/28/16
//
////////////////////////////////

for(var s=0;s<SensorCount;s++) {
  switch(SensorAction[s]) {
    case Action.TurnLeft:    draw_set_color(c_blue);   break;    
    case Action.TurnRight:   draw_set_color(c_red);    break;    
    case Action.Brakes:      draw_set_color(c_purple); break;
  }
  
  var x1 = Sensor_x1[s];
  var y1 = Sensor_y1[s];
  var x2 = Sensor_x1[s] + lengthdir_x(SensorLength[s],SensorAngle[s]);
  var y2 = Sensor_y1[s] + lengthdir_y(SensorLength[s],SensorAngle[s]);
  draw_line(x1,y1,x2,y2);
}
