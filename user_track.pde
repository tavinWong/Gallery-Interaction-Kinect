void onNewUser(SimpleOpenNI curContext, int userId)
{
  println("onNewUser - userId: " + userId);

  curContext.startTrackingSkeleton(userId);
}
 
void onLostUser(SimpleOpenNI curContext, int userId)
{
  println("onLostUser - userId: " + userId);
 
}
