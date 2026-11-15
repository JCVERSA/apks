package androidx.media3.exoplayer.source;

import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.v2;

public interface q extends f0 {

    public interface a extends f0.a {
        void g(q qVar);
    }

    @Override
    boolean a(v2 v2Var);

    long b(long j10, c4 c4Var);

    void discardBuffer(long j10, boolean z10);

    long e(i2.z[] zVarArr, boolean[] zArr, f2.u[] uVarArr, boolean[] zArr2, long j10);

    void f(a aVar, long j10);

    @Override
    long getBufferedPositionUs();

    @Override
    long getNextLoadPositionUs();

    f2.z getTrackGroups();

    @Override
    boolean isLoading();

    void maybeThrowPrepareError();

    long readDiscontinuity();

    @Override
    void reevaluateBuffer(long j10);

    long seekToUs(long j10);
}
