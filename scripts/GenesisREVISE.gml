///Genesis()
//
//  Initiates the first generation of Evols from the ground up
//
//  STATIC: whether genes are able to change via breeding or mutation
//
//  Last edited 03/28/16
//
////////////////////////////////

///Inhertance
  GetRoomVars();

///Initiation

//--- Genetics and Population
  Generation = 0;
  PopulationSize = 1;
  MutRate = 1.5;
  MutDelta = 4.0;
  FitThresh = round((PopulationSize / 100) * 70);
  Sex = false;

//--- Direction
  StaticDirection = false;
  StartAngle = random(360);

//--- Body
  StaticBody = false;
  BodyW = GridSize;
  BodyH = BodyW*2;
  BodyMass = (BodyW * BodyH);
  //sprite_collision_mask(SprEvol,true,1,x-(BodyW),x+(BodyW),y-(BodyH),y+(BodyH),1,255);

//--- Motor
  StaticMotor = false;
  Thrust = 1;
  Acceleration = (Thrust / BodyMass);
  Brakes = GridSize;

//--- Sensors
  StaticSensors = false;
  SensorCount = 1;

// Creation
  var MutMin = 0.5;
  var MutMax = 1.5;
  Engine.Generation++;
/**/
  for(var n=0;n<PopulationSize;n++) {
    with(instance_create(StartPos[0],StartPos[1],Evol)) {
    // Inheritance
      GetRoomVars();
      
    // Fitness
      TravelDistance = 0;
      LastPos[0] = x;
      LastPos[1] = y;
      LifeLength = 0;
      Fitness = 0;
      
    // Direction
      if Engine.StaticDirection == false {
        image_angle = random(360);
      }
      
    // Body
      if Engine.StaticBody == false {
        BodyW = Engine.BodyW * random_range(MutMin,MutMax);
        BodyH = Engine.BodyH * random_range(MutMin,MutMax);
        BodyMass = (BodyW * BodyH);
      }
      
    // Motor
      if Engine.StaticMotor == false {
        Thrust = logn(2,BodyMass) * random_range(MutMin,MutMax);
        Acceleration = (Thrust / BodyMass);
        Brakes = Engine.Brakes;
      }
      
      enum Action {
        TurnLeft,
        TurnRight,
        Brake,
      }
      
    // Sensors
      if Engine.StaticSensors == false {
      /**/
        SensorCount = Engine.SensorCount;
        Collision = false;
        var s = 0;
        for(var s=0;s<SensorCount;s++) {
          Sensor_x1[s] = random(BodyW);
          Sensor_y1[s] = random(BodyH);
          SensorAngle[s] = irandom(360);
          SensorLength[s] = irandom(BodyMass/16);
        /**/
          SensorAction[s] = choose(
            Action.TurnLeft,
            Action.TurnRight,
            Action.Brake
          );
        /**/
        }
      /**/
      }
      
    // Draw
      DrawFitness = false;      
    }
  }
