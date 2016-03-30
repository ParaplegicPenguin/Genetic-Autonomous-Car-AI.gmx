///Genesis()
//
//  Initiates the first generation of Evols from the ground up
//
//  STATIC: whether genes are able to change via breeding or mutation
//
//  Last edited 03/28/16
//
////////////////////////////////

show_debug_message("Genesis Triggered...");
show_debug_message("...");
        
//Inheritance
  GetRoomVars();

///Initiation
{
  //Temp vars
  var g = GridSize;
  
  //Statics
  StaticDirection = false;
  StaticBody = false;
  StaticMotor = false;
  StaticSensor = false;
  
  //Genetics and Population
  GenNum = 0;
  PopSize = 1;
  MutRate = 1.5;
  MutPercent = 4.0;
  FitThresh = round((PopSize / 100) * 70);
  
  //Body
  BodyH = g;
  BodyW = g*2;
  
  //Motor
  Thrust = 1;
  Brakes = g;
  
  //Sensors
  SensorCount = 1;
  
  //Sensor Actions
  enum Action {
    TurnLeft,
    TurnRight,
    Brakes
  }
}
///Creation
{
  //Temp vars
  var MutMin = 0.5;
  var MutMax = 1.5;
  
  for(var n=0;n<PopSize;n++) {
    with(instance_create(RoomW/2,RoomH/2,Evol)) {
      //Inheritance
      GetRoomVars();
      
      //Temp vars
      var g = GridSize;
      
      //Fitness
      TravelDist = 0;
      LastPos[0] = x;
      LastPos[1] = y;
      LifeLength = 0;
      Fitness = 0;
      
      //Direction
      if !(Engine.StaticDirection) {
        image_angle = random(360);
      }
      
      //Body
      if !(Engine.StaticBody) {
        BodyW = Engine.BodyW; // * random_range(MutMin,MutMax);
        BodyH = Engine.BodyH; // * random_range(MutMin,MutMax);
        BodyMass = (BodyW * BodyH); // * random_range(MutMin,MutMax);
      }
      
      //Motor
      if !(Engine.StaticMotor) {
        Thrust = log2(BodyMass) * random_range(MutMin,MutMax);
        Acceleration = (Thrust / BodyMass);
        Brakes = Engine.Brakes;
      }
      
      //Sensors
      if !(Engine.StaticSensor) {
        SensorCount = Engine.SensorCount;
        Collision = false;
        for(var s=0;s<SensorCount;s++) {
        d3d_transform_set_rotation_z(image_angle);
        d3d_transform_add_translation(x,y,0);
          SensorLength[s] = irandom(BodyMass/g);
          SensorAngle[s] = irandom(360);
          Sensor_x1[s] = 0;
          Sensor_y1[s] = 0;
          Sensor_x2[s] = Sensor_x1[s] + lengthdir_x(SensorLength[s],SensorAngle[s]);
          Sensor_y2[s] = Sensor_y1[s] + lengthdir_y(SensorLength[s],SensorAngle[s]);
          SensorAction[s] = choose(
            Action.TurnLeft,
            Action.TurnRight,
            Action.Brakes
          );
        d3d_transform_set_identity();
        }
      }
    }
  }
}
