package p9;

import android.util.Pair;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i9.b0;
import i9.c0;

final class c implements g {

    private final long[] f69081a;

    private final long[] f69082b;

    private final long f69083c;

    private c(long[] jArr, long[] jArr2, long j10) {
        this.f69081a = jArr;
        this.f69082b = jArr2;
        this.f69083c = j10 == C.TIME_UNSET ? p0.B0(jArr2[jArr2.length - 1]) : j10;
    }

    public static c b(long j10, MlltFrame mlltFrame, long j11) {
        int length = mlltFrame.bytesDeviations.length;
        int i10 = length + 1;
        long[] jArr = new long[i10];
        long[] jArr2 = new long[i10];
        jArr[0] = j10;
        long j12 = 0;
        jArr2[0] = 0;
        for (int i11 = 1; i11 <= length; i11++) {
            int i12 = i11 - 1;
            j10 += (long) (mlltFrame.bytesBetweenReference + mlltFrame.bytesDeviations[i12]);
            j12 += (long) (mlltFrame.millisecondsBetweenReference + mlltFrame.millisecondsDeviations[i12]);
            jArr[i11] = j10;
            jArr2[i11] = j12;
        }
        return new c(jArr, jArr2, j11);
    }

    private static Pair c(long j10, long[] jArr, long[] jArr2) {
        int i10 = p0.i(jArr, j10, true, true);
        long j11 = jArr[i10];
        long j12 = jArr2[i10];
        int i11 = i10 + 1;
        if (i11 == jArr.length) {
            return Pair.create(Long.valueOf(j11), Long.valueOf(j12));
        }
        long j13 = jArr[i11];
        return Pair.create(Long.valueOf(j10), Long.valueOf(((long) ((j13 == j11 ? 0.0d : (j10 - j11) / (j13 - j11)) * (jArr2[i11] - j12))) + j12));
    }

    @Override
    public long a() {
        return -1L;
    }

    @Override
    public long getDurationUs() {
        return this.f69083c;
    }

    @Override
    public b0.a getSeekPoints(long j10) {
        Pair pairC = c(p0.e1(p0.r(j10, 0L, this.f69083c)), this.f69082b, this.f69081a);
        return new b0.a(new c0(p0.B0(((Long) pairC.first).longValue()), ((Long) pairC.second).longValue()));
    }

    @Override
    public long getTimeUs(long j10) {
        return p0.B0(((Long) c(j10, this.f69081a, this.f69082b).second).longValue());
    }

    @Override
    public boolean isSeekable() {
        return true;
    }
}
