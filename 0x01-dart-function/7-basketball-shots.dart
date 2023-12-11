int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamAtotal = teamA['Free throws']! + teamA['2 pointers']! * 2 + teamA['3 pointers']! * 3;
  int teamBtotal = teamB['Free throws']! + teamB['2 pointers']! * 2 + teamB['3 pointers']! * 3;
  
  if (teamAtotal > teamBtotal) {
    return 1;
  }
  else if (teamAtotal < teamBtotal) {
    return 2;
  }
  else {
    return 0;
  }
}

main() {
  var teamA = {'Free throws' : 23, '2 pointer' : 32, '3 pointer': 16};
  var teamB = {'Free throws' : 31, '2 pointer' : 27, '3 pointer': 13};

  print(whoWins(teamA, teamB));
}
