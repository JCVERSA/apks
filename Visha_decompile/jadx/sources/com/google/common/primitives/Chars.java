package com.google.common.primitives;

import java.util.Comparator;

public abstract class Chars {

    public enum LexicographicalComparator implements Comparator<char[]> {
        INSTANCE;

        @Override
        public String toString() {
            return "Chars.lexicographicalComparator()";
        }

        @Override
        public int compare(char[] cArr, char[] cArr2) {
            int iMin = Math.min(cArr.length, cArr2.length);
            for (int i = 0; i < iMin; i++) {
                int iCompare = Character.compare(cArr[i], cArr2[i]);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return cArr.length - cArr2.length;
        }
    }

    public static boolean a(char[] cArr, char c) {
        for (char c2 : cArr) {
            if (c2 == c) {
                return true;
            }
        }
        return false;
    }
}
