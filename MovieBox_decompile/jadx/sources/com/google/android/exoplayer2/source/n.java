package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.d3;

public interface n extends b0 {

    public interface a extends b0.a {
        void h(n nVar);
    }

    long b(long j10, d3 d3Var);

    @Override
    boolean continueLoading(long j10);

    void discardBuffer(long j10, boolean z10);

    long e(na.s[] sVarArr, boolean[] zArr, v9.s[] sVarArr2, boolean[] zArr2, long j10);

    void f(a aVar, long j10);

    @Override
    long getBufferedPositionUs();

    @Override
    long getNextLoadPositionUs();

    v9.y getTrackGroups();

    @Override
    boolean isLoading();

    void maybeThrowPrepareError();

    long readDiscontinuity();

    @Override
    void reevaluateBuffer(long j10);

    long seekToUs(long j10);
}
