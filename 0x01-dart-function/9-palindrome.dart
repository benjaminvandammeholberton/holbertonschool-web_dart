bool isPalindrome(String s) {
    final len = s.length;
    int i = 0, j = len - 1;

    if (len < 3) {
        return false;
    }

    while (i < j) {
        if (s[i] != s[j]) {
            return false;
        }
        i++;
        j--;
    }
    return true;
}