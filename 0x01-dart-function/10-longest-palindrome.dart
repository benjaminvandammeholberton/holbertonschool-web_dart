import '9-palindrome.dart';

String longestPalindrome(String s) {
    final len = s.length;

    if (len < 3) {
        return "none";
    }

    int i = 0, j = 0;
    String longest = "none";

    while (i < len) {
        j = i + 1;
        while (j <= len) {
            String substring = s.substring(i, j);
            if (isPalindrome(substring) && (substring.length > longest.length || longest == "none")) {
                longest = substring;
            }
            j++;
        }
        i++;
    }
    return longest;
}