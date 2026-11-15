package com.cloud.hisavana.sdk;

abstract class m1 {

    static final int[] f21980a = new int[0];

    static final long[] f21981b = new long[0];

    static final Object[] f21982c = new Object[0];

    static int a(int[] iArr, int i10, int i11) {
        int i12 = i10 - 1;
        int i13 = 0;
        while (i13 <= i12) {
            int i14 = (i13 + i12) >>> 1;
            int i15 = iArr[i14];
            if (i15 < i11) {
                i13 = i14 + 1;
            } else {
                if (i15 <= i11) {
                    return i14;
                }
                i12 = i14 - 1;
            }
        }
        return ~i13;
    }
}
