String longestUniqueSubstring(String str) {
    int len = str.length;
    int i = 0;
    int j = 0;
    int maxLen = 0;
    var idx = new Map();
    String ans = "";

    while (j < len) {
        if (idx.containsKey(str[j]) && idx[str[j]] >= i) {
            i = idx[str[j]] + 1;
            idx[str[j]] = j;
        } else {
            idx[str[j]] = j;
        }

        int currentLen = j - i + 1;
        if (currentLen > maxLen) {
            ans = str.substring(i,j + 1);
            maxLen = currentLen;
        }
        j += 1;
    }
    return (ans);
}