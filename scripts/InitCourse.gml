///InitCourse()
//
//  Create course
//
//  Last edited 03/28/16
//
////////////////////////////////

// border
  var g = GridSize;
  for(var i=0;i<RoomW;i+=g) {
    instance_create(i,0,Wall);
    instance_create(i,RoomH,Wall);
  }
  for(var j=0;j<RoomH;j+=g) {
    instance_create(0,j,Wall);
    instance_create(RoomW,j,Wall);
  }
  instance_create(RoomW,RoomH,Wall);
