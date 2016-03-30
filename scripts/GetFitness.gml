///GetFitness()
//
//  Returns fitness score
//
//  Last edited 03/28/16
//
////////////////////////////////

if LastPos[0] != x || LastPos[1] != y { // check if moved
  TravelDist++;
  LastPos[0] = x;
  LastPos[1] = y;
}
LifeLength++;
return (TravelDist * LifeLength) / 100
