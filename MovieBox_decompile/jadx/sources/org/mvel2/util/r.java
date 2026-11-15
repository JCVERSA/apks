package org.mvel2.util;

public class r {

    public static final char[] f68931a = {'0', '1', '2', '3', '0', '1', '2', '0', '0', '2', '2', '4', '5', '5', '0', '1', '2', '6', '2', '3', '0', '1', '0', '2', '0', '2'};

    public static String a(String str) {
        char c10;
        char[] charArray = str.toUpperCase().toCharArray();
        StringBuilder sb2 = new StringBuilder();
        char c11 = '?';
        for (int i10 = 0; i10 < charArray.length && sb2.length() < 4 && (c10 = charArray[i10]) != ','; i10++) {
            if (c10 >= 'A' && c10 <= 'Z' && c10 != c11) {
                char c12 = f68931a[c10 - 'A'];
                if (c12 != '0') {
                    sb2.append(c12);
                }
                c11 = c10;
            }
        }
        if (sb2.length() == 0) {
            return null;
        }
        for (int length = sb2.length(); length < 4; length++) {
            sb2.append('0');
        }
        return sb2.toString();
    }
}
