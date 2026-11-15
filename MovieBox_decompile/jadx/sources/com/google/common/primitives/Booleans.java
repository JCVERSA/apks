package com.google.common.primitives;

import java.util.Comparator;

public abstract class Booleans {

    private enum BooleanComparator implements Comparator<Boolean> {
        TRUE_FIRST(1, "Booleans.trueFirst()"),
        FALSE_FIRST(-1, "Booleans.falseFirst()");

        private final String toString;
        private final int trueValue;

        BooleanComparator(int i10, String str) {
            this.trueValue = i10;
            this.toString = str;
        }

        @Override
        public String toString() {
            return this.toString;
        }

        @Override
        public int compare(Boolean bool, Boolean bool2) {
            return (bool2.booleanValue() ? this.trueValue : 0) - (bool.booleanValue() ? this.trueValue : 0);
        }
    }

    private enum LexicographicalComparator implements Comparator<boolean[]> {
        INSTANCE;

        @Override
        public String toString() {
            return "Booleans.lexicographicalComparator()";
        }

        @Override
        public int compare(boolean[] zArr, boolean[] zArr2) {
            int iMin = Math.min(zArr.length, zArr2.length);
            for (int i10 = 0; i10 < iMin; i10++) {
                int iCompare = Boolean.compare(zArr[i10], zArr2[i10]);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return zArr.length - zArr2.length;
        }
    }

    public static boolean a(boolean[] zArr, boolean z10) {
        for (boolean z11 : zArr) {
            if (z11 == z10) {
                return true;
            }
        }
        return false;
    }
}
