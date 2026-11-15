package defpackage;

import androidx.core.view.MotionEventCompat;

public abstract class i45 {
    public static int a(int i) {
        int i2 = i & 65535;
        int i3 = (i2 | (i2 << 8)) & 16711935;
        int i4 = (i3 | (i3 << 4)) & 252645135;
        int i5 = (i4 | (i4 << 2)) & 858993459;
        return (i5 | (i5 << 1)) & 1431655765;
    }

    public static long b(int i) {
        int iA = nf0.a(nf0.a(nf0.a(nf0.a(i, MotionEventCompat.ACTION_POINTER_INDEX_MASK, 8), 15728880, 4), 202116108, 2), 572662306, 1);
        return ((((long) (iA >>> 1)) & 1431655765) << 32) | (1431655765 & ((long) iA));
    }

    public static void c(long j, long[] jArr, int i) {
        long jB = nf0.b(nf0.b(nf0.b(nf0.b(nf0.b(j, 4294901760L, 16), 280375465148160L, 8), 67555025218437360L, 4), 868082074056920076L, 2), 2459565876494606882L, 1);
        jArr[i] = jB & 6148914691236517205L;
        jArr[i + 1] = (jB >>> 1) & 6148914691236517205L;
    }

    public static void d(long[] jArr, int i, int i2, long[] jArr2, int i3) {
        for (int i4 = 0; i4 < i2; i4++) {
            c(jArr[i + i4], jArr2, i3);
            i3 += 2;
        }
    }

    public static int e(int i) {
        int i2 = i & 255;
        int i3 = (i2 | (i2 << 4)) & 3855;
        int i4 = (i3 | (i3 << 2)) & 13107;
        return (i4 | (i4 << 1)) & 21845;
    }

    public static int f(int i) {
        return nf0.a(nf0.a(nf0.a(nf0.a(i, 11141290, 7), 52428, 14), 15728880, 4), MotionEventCompat.ACTION_POINTER_INDEX_MASK, 8);
    }

    public static long g(long j) {
        return nf0.b(nf0.b(nf0.b(nf0.b(nf0.b(j, 2459565876494606882L, 1), 868082074056920076L, 2), 67555025218437360L, 4), 280375465148160L, 8), 4294901760L, 16);
    }
}
