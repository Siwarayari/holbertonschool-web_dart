bool isPalindrome(String s) {
  String? reverse =s.split('').reversed.join('');
  return (s.length > 2 && s == reverse);
}
