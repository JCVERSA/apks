package com.google.common.primitives;

import java.util.Comparator;

enum Shorts$LexicographicalComparator implements Comparator<short[]> {
    INSTANCE;

    @Override
    public String toString() {
        return "Shorts.lexicographicalComparator()";
    }

    @Override
    public int compare(short[] sArr, short[] sArr2) {
        int iMin = Math.min(sArr.length, sArr2.length);
        for (int i = 0; i < iMin; i++) {
            int iCompare = Short.compare(sArr[i], sArr2[i]);
            if (iCompare != 0) {
                return iCompare;
            }
        }
        return sArr.length - sArr2.length;
    }
}
