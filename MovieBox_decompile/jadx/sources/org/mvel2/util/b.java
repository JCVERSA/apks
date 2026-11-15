package org.mvel2.util;

public class b {
    public static int a(char c10, int i10, int i11, char[] cArr) {
        int i12 = i11 + i10;
        while (i10 < i12) {
            if (cArr[i10] == c10) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static int b(char c10, int i10, int i11, char[] cArr) {
        for (int i12 = (i10 + i11) - 1; i12 >= 0; i12--) {
            if (cArr[i12] == c10) {
                return i12;
            }
        }
        return -1;
    }
}
