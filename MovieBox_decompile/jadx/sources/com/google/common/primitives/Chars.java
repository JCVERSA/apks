package com.google.common.primitives;

import java.util.Comparator;

public abstract class Chars {

    private enum LexicographicalComparator implements Comparator<char[]> {
        INSTANCE;

        @Override
        public String toString() {
            return "Chars.lexicographicalComparator()";
        }

        @Override
        public int compare(char[] cArr, char[] cArr2) {
            int iMin = Math.min(cArr.length, cArr2.length);
            for (int i10 = 0; i10 < iMin; i10++) {
                int iCompare = Character.compare(cArr[i10], cArr2[i10]);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return cArr.length - cArr2.length;
        }
    }

    public static boolean a(char[] cArr, char c10) {
        for (char c11 : cArr) {
            if (c11 == c10) {
                return true;
            }
        }
        return false;
    }
}
