void main(){
  Map<int,bool?> map={
    1:true, 2:true, 3:true,
    4:false,5:null, 6:false,
    7:null, 8:false, 9:null
  };
  bool? ans= win(map);
  print(ans);
}
bool? win(Map<int,bool?> map){
  //check rows
  for(int i=1;i<=7;i+=3){
    if(map[i]!=null && map[i]==map[i+2] && map[i]==map[i+2]){
      return map[i];
    }
  }
  //for coloumns
  for(int i=1;i<=3;i++){
    if(map[i]!=null && map[i]== map[i+3] && map[i]==map[i+6]){
      return map[i];
    }
  }

  //for diagonals
  //left diagonal
  if(map[1]!=null && map[1]==map[5]&& map[1]==map[9]){
    return map[1];
  }
  //right diagonal
  if(map[3]!= null && map[3]==map[5] && map[3]==map[7]){
    return map[3];
  }
  return null;
}