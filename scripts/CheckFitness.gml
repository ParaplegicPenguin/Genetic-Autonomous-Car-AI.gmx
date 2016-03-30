///CheckFitness()
//
//  check and update fitness score
//
//  Last edited 03/28/16
//
////////////////////////////////
if Fitness > Engine.BestFitness {
  Engine.BestFitness = Fitness;
  Engine.BestBodyW = BodyW;
  Engine.BestBodyH = BodyH;
  Engine.BestBodyMass = BodyMass;
  Engine.BestThrust = Thrust;
  Engine.BestAcceleration = Acceleration;
  Engine.BestBrakes = Brakes;
}
