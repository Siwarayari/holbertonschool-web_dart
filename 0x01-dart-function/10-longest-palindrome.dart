String longestPalindrome(String s){
    if (s.length < 3)
        return "none";
    for (int i = 0; i < s.length ~/ 2; i++)
    {
        if (s[i] != s[s.length - i - 1])
            return "none";
}
    return "none";
}
