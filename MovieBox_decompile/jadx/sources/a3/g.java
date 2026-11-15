package a3;

import androidx.media3.common.util.j0;
import androidx.media3.common.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public final class g extends b {

    public final long f121a;

    public final long f122b;

    private g(long j10, long j11) {
        this.f121a = j10;
        this.f122b = j11;
    }

    static g b(j0 j0Var, long j10, p0 p0Var) {
        long jC = c(j0Var, j10);
        return new g(jC, p0Var.b(jC));
    }

    static long c(j0 j0Var, long j10) {
        long jH = j0Var.H();
        return (128 & jH) != 0 ? 8589934591L & ((((jH & 1) << 32) | j0Var.J()) + j10) : C.TIME_UNSET;
    }

    @Override
    public String toString() {
        return "SCTE-35 TimeSignalCommand { ptsTime=" + this.f121a + ", playbackPositionUs= " + this.f122b + " }";
    }
}
