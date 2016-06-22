void checkValue(){
  int t = dataSent[0];
  int middleV = 1300;
  if(t>420){
   if(dataSent[2]>middleV){
        dataSent[0] = 600;    //sky hand
        dataSent[1] = 600;
     } else{
        dataSent[0] = 600;  //castle
        dataSent[1] = 450 ;
     }
  }else if (t<=420 && t>320){

       dataSent[0] = 450;  //thing on the floor
        dataSent[1] = 50;
    
  } else if (t<=320 && t>220){
        if(dataSent[2] > middleV){
           dataSent[0] = 165;
           dataSent[1] = 500; 
        } else{
           dataSent[0] = 210;
           dataSent[1] = 265;
        }
  } else if (t<=220 && t >110){
    if(dataSent[2] > middleV){
       dataSent[0] = 30;
       dataSent[1] = 530; 
    }else{
      dataSent[0] = 15;
       dataSent[1] = 400; 
    }
  }else if(dataSent[0] ==0){
    if(tooLong){
           dataSent[0] = 210;
           dataSent[1] = 265; 
           tooLong = false;
    }else{
           dataSent[0] = 165;
           dataSent[1] = 500; 
           tooLong = true;
    }
    
  }
  else if ( t<=110 ){
           println("x "+dataSent[0]);
           dataSent[0] = 10;
           dataSent[1] = 140; 
     
  } 
  
}


