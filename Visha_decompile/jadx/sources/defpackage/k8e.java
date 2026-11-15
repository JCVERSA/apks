package defpackage;

import java.util.Arrays;

public final class k8e implements kae {
    public final int a;
    public final int[] b;
    public final long[] c;
    public final long[] d;
    public final long[] e;
    public final long f;

    public k8e(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.b = iArr;
        this.c = jArr;
        this.d = jArr2;
        this.e = jArr3;
        int length = iArr.length;
        this.a = length;
        if (length <= 0) {
            this.f = 0L;
        } else {
            int i = length - 1;
            this.f = jArr2[i] + jArr3[i];
        }
    }

    @Override
    public final z9e a(long j) {
        long[] jArr = this.e;
        int iY = kfh.y(jArr, j, true, true);
        long j2 = jArr[iY];
        long[] jArr2 = this.c;
        lae laeVar = new lae(j2, jArr2[iY]);
        if (laeVar.a >= j || iY == this.a - 1) {
            return new z9e(laeVar, laeVar);
        }
        int i = iY + 1;
        return new z9e(laeVar, new lae(jArr[i], jArr2[i]));
    }

    public final String toString() {
        long[] jArr = this.d;
        long[] jArr2 = this.e;
        long[] jArr3 = this.c;
        return "ChunkIndex(length=" + this.a + ", sizes=" + Arrays.toString(this.b) + ", offsets=" + Arrays.toString(jArr3) + ", timeUs=" + Arrays.toString(jArr2) + ", durationsUs=" + Arrays.toString(jArr) + ")";
    }

    @Override
    public final long zza() {
        return this.f;
    }

    @Override
    public final boolean zzh() {
        return true;
    }
}
