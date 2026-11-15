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
        for (int i10 = 0; i10 < iMin; i10++) {
            int iCompare = Short.compare(sArr[i10], sArr2[i10]);
            if (iCompare != 0) {
                return iCompare;
            }
        }
        return sArr.length - sArr2.length;
    }
}
