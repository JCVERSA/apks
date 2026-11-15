package defpackage;

import android.util.Pair;
import androidx.media3.common.C;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;

public final class bq6 implements ma9 {
    public final long[] a;
    public final long[] b;
    public final long c;

    public bq6(long[] jArr, long[] jArr2, long j) {
        this.a = jArr;
        this.b = jArr2;
        this.c = j == C.TIME_UNSET ? blb.t0(jArr2[jArr2.length - 1]) : j;
    }

    public static bq6 a(long j, MlltFrame mlltFrame, long j2) {
        int length = mlltFrame.bytesDeviations.length;
        int i = length + 1;
        long[] jArr = new long[i];
        long[] jArr2 = new long[i];
        jArr[0] = j;
        long j3 = 0;
        jArr2[0] = 0;
        for (int i2 = 1; i2 <= length; i2++) {
            int i3 = i2 - 1;
            j += (long) (mlltFrame.bytesBetweenReference + mlltFrame.bytesDeviations[i3]);
            j3 += (long) (mlltFrame.millisecondsBetweenReference + mlltFrame.millisecondsDeviations[i3]);
            jArr[i2] = j;
            jArr2[i2] = j3;
        }
        return new bq6(jArr, jArr2, j2);
    }

    public static Pair b(long j, long[] jArr, long[] jArr2) {
        int i = blb.i(jArr, j, true, true);
        long j2 = jArr[i];
        long j3 = jArr2[i];
        int i2 = i + 1;
        if (i2 == jArr.length) {
            return Pair.create(Long.valueOf(j2), Long.valueOf(j3));
        }
        long j4 = jArr[i2];
        return Pair.create(Long.valueOf(j), Long.valueOf(((long) ((j4 == j2 ? 0.0d : (j - j2) / (j4 - j2)) * (jArr2[i2] - j3))) + j3));
    }

    @Override
    public long getDataEndPosition() {
        return -1L;
    }

    @Override
    public long getDurationUs() {
        return this.c;
    }

    @Override
    public ja9.a getSeekPoints(long j) {
        Pair pairB = b(blb.P0(blb.q(j, 0L, this.c)), this.b, this.a);
        return new ja9.a(new la9(blb.t0(((Long) pairB.first).longValue()), ((Long) pairB.second).longValue()));
    }

    @Override
    public long getTimeUs(long j) {
        return blb.t0(((Long) b(j, this.a, this.b).second).longValue());
    }

    @Override
    public boolean isSeekable() {
        return true;
    }
}
