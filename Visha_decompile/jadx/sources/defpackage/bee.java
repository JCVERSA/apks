package defpackage;

import android.util.Pair;
import androidx.media3.common.C;

public final class bee implements eee {
    public final long[] a;
    public final long[] b;
    public final long c;

    public bee(long[] jArr, long[] jArr2, long j) {
        this.a = jArr;
        this.b = jArr2;
        this.c = j == C.TIME_UNSET ? kfh.N(jArr2[jArr2.length - 1]) : j;
    }

    public static bee b(long j, fde fdeVar, long j2) {
        int[] iArr = fdeVar.e;
        int length = iArr.length;
        int i = length + 1;
        long[] jArr = new long[i];
        long[] jArr2 = new long[i];
        jArr[0] = j;
        long j3 = 0;
        jArr2[0] = 0;
        for (int i2 = 1; i2 <= length; i2++) {
            int i3 = i2 - 1;
            j += (long) (fdeVar.c + iArr[i3]);
            j3 += (long) (fdeVar.d + fdeVar.f[i3]);
            jArr[i2] = j;
            jArr2[i2] = j3;
        }
        return new bee(jArr, jArr2, j2);
    }

    public static Pair d(long j, long[] jArr, long[] jArr2) {
        int iY = kfh.y(jArr, j, true, true);
        long j2 = jArr[iY];
        long j3 = jArr2[iY];
        int i = iY + 1;
        if (i == jArr.length) {
            return Pair.create(Long.valueOf(j2), Long.valueOf(j3));
        }
        long j4 = jArr[i];
        return Pair.create(Long.valueOf(j), Long.valueOf(((long) ((j4 == j2 ? 0.0d : (j - j2) / (j4 - j2)) * (jArr2[i] - j3))) + j3));
    }

    @Override
    public final z9e a(long j) {
        int i = kfh.a;
        Pair pairD = d(kfh.Q(Math.max(0L, Math.min(j, this.c))), this.b, this.a);
        lae laeVar = new lae(kfh.N(((Long) pairD.first).longValue()), ((Long) pairD.second).longValue());
        return new z9e(laeVar, laeVar);
    }

    @Override
    public final long c(long j) {
        return kfh.N(((Long) d(j, this.a, this.b).second).longValue());
    }

    @Override
    public final long zza() {
        return this.c;
    }

    @Override
    public final int zzc() {
        return C.RATE_UNSET_INT;
    }

    @Override
    public final long zzd() {
        return -1L;
    }

    @Override
    public final boolean zzh() {
        return true;
    }
}
