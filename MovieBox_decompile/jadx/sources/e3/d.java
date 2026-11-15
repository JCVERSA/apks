package e3;

import androidx.media3.common.util.a1;

abstract class d {

    public static final class b {

        public final long[] f59303a;

        public final int[] f59304b;

        public final int f59305c;

        public final long[] f59306d;

        public final int[] f59307e;

        public final long f59308f;

        public final long f59309g;

        private b(long[] jArr, int[] iArr, int i10, long[] jArr2, int[] iArr2, long j10, long j11) {
            this.f59303a = jArr;
            this.f59304b = iArr;
            this.f59305c = i10;
            this.f59306d = jArr2;
            this.f59307e = iArr2;
            this.f59308f = j10;
            this.f59309g = j11;
        }
    }

    public static b a(int i10, long[] jArr, int[] iArr, long j10) {
        int[] iArr2 = iArr;
        int i11 = 8192 / i10;
        int i12 = 0;
        int iK = 0;
        for (int i13 : iArr2) {
            iK += a1.k(i13, i11);
        }
        long[] jArr2 = new long[iK];
        int[] iArr3 = new int[iK];
        long[] jArr3 = new long[iK];
        int[] iArr4 = new int[iK];
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int iMax = 0;
        while (i12 < iArr2.length) {
            int i17 = iArr2[i12];
            long j11 = jArr[i12];
            while (i17 > 0) {
                int iMin = Math.min(i11, i17);
                jArr2[i16] = j11;
                int i18 = i10 * iMin;
                iArr3[i16] = i18;
                i15 += i18;
                iMax = Math.max(iMax, i18);
                jArr3[i16] = ((long) i14) * j10;
                iArr4[i16] = 1;
                j11 += (long) iArr3[i16];
                i14 += iMin;
                i17 -= iMin;
                i16++;
                i11 = i11;
            }
            i12++;
            iArr2 = iArr;
        }
        return new b(jArr2, iArr3, iMax, jArr3, iArr4, j10 * ((long) i14), i15);
    }
}
