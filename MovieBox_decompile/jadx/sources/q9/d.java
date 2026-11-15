package q9;

import com.google.android.exoplayer2.util.p0;

abstract class d {

    public static final class b {

        public final long[] f69444a;

        public final int[] f69445b;

        public final int f69446c;

        public final long[] f69447d;

        public final int[] f69448e;

        public final long f69449f;

        private b(long[] jArr, int[] iArr, int i10, long[] jArr2, int[] iArr2, long j10) {
            this.f69444a = jArr;
            this.f69445b = iArr;
            this.f69446c = i10;
            this.f69447d = jArr2;
            this.f69448e = iArr2;
            this.f69449f = j10;
        }
    }

    public static b a(int i10, long[] jArr, int[] iArr, long j10) {
        int i11 = 8192 / i10;
        int iL = 0;
        for (int i12 : iArr) {
            iL += p0.l(i12, i11);
        }
        long[] jArr2 = new long[iL];
        int[] iArr2 = new int[iL];
        long[] jArr3 = new long[iL];
        int[] iArr3 = new int[iL];
        int i13 = 0;
        int i14 = 0;
        int iMax = 0;
        for (int i15 = 0; i15 < iArr.length; i15++) {
            int i16 = iArr[i15];
            long j11 = jArr[i15];
            while (i16 > 0) {
                int iMin = Math.min(i11, i16);
                jArr2[i14] = j11;
                int i17 = i10 * iMin;
                iArr2[i14] = i17;
                iMax = Math.max(iMax, i17);
                jArr3[i14] = ((long) i13) * j10;
                iArr3[i14] = 1;
                j11 += (long) iArr2[i14];
                i13 += iMin;
                i16 -= iMin;
                i14++;
            }
        }
        return new b(jArr2, iArr2, iMax, jArr3, iArr3, j10 * ((long) i13));
    }
}
