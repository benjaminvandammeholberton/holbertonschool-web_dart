int whoWins(Map<String, int> teamA, Map<String, int> teamB){
  var scoreA = calculateScore(teamA);
  var scoreB = calculateScore(teamB);

  if (scoreA > scoreB) return 1;
  if (scoreA < scoreB) return 2;
  return 0;
}

int calculateScore(Map<String, int> score){
  var freeThrows = score['Free throws'] ?? 0;
  var twoPointer = (score['2 pointers'] ?? 0) * 2;
  var threePointer = (score['3 pointers'] ?? 0) * 3;
  return freeThrows + twoPointer + threePointer;
}
