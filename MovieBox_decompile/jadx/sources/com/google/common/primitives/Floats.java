package com.google.common.primitives;

import java.util.Comparator;

public abstract class Floats extends c {

    private enum LexicographicalComparator implements Comparator<float[]> {
        INSTANCE;

        @Override
        public String toString() {
            return "Floats.lexicographicalComparator()";
        }

        @Override
        public int compare(float[] fArr, float[] fArr2) {
            int iMin = Math.min(fArr.length, fArr2.length);
            for (int i10 = 0; i10 < iMin; i10++) {
                int iCompare = Float.compare(fArr[i10], fArr2[i10]);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return fArr.length - fArr2.length;
        }
    }

    public static int a(float f10) {
        return Float.valueOf(f10).hashCode();
    }
}
