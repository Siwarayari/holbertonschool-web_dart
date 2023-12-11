String longestUniqueSubstring(String str) {
  var strSplit = str.split('');
  var newSet = <String>{...strSplit}.join();
  return newSet.toString();
}
