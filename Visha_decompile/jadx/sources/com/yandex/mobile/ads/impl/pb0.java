package com.yandex.mobile.ads.impl;

final class pb0 {

    public static final class a {
        public final long[] a;
        public final int[] b;
        public final int c;
        public final long[] d;
        public final int[] e;
        public final long f;

        private a(long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
            this.a = jArr;
            this.b = iArr;
            this.c = i;
            this.d = jArr2;
            this.e = iArr2;
            this.f = j;
        }
    }

    public static a a(int i, long[] jArr, int[] iArr, long j) {
        int i2 = 1;
        int i3 = 8192 / i;
        int i4 = 0;
        for (int i5 : iArr) {
            int i6 = f92.a;
            i4 += ((i5 + i3) - 1) / i3;
        }
        long[] jArr2 = new long[i4];
        int[] iArr2 = new int[i4];
        long[] jArr3 = new long[i4];
        int[] iArr3 = new int[i4];
        int i7 = 0;
        int i8 = 0;
        int iMax = 0;
        for (int i9 = 0; i9 < iArr.length; i9 += i2) {
            int i10 = iArr[i9];
            long j2 = jArr[i9];
            while (i10 > 0) {
                int iMin = Math.min(i3, i10);
                jArr2[i8] = j2;
                int i11 = i * iMin;
                iArr2[i8] = i11;
                iMax = Math.max(iMax, i11);
                jArr3[i8] = ((long) i7) * j;
                iArr3[i8] = 1;
                j2 += (long) iArr2[i8];
                i7 += iMin;
                i10 -= iMin;
                i2 = 1;
                i8++;
                i3 = i3;
            }
        }
        return new a(jArr2, iArr2, iMax, jArr3, iArr3, j * ((long) i7));
    }
}
