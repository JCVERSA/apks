package com.google.android.exoplayer2.source;

import defpackage.eva;
import defpackage.h19;
import defpackage.ka9;
import defpackage.qi3;

public interface h extends q {

    public interface a extends q.a {
        void d(h hVar);
    }

    long a(qi3[] qi3VarArr, boolean[] zArr, h19[] h19VarArr, boolean[] zArr2, long j);

    long c(long j, ka9 ka9Var);

    @Override
    boolean continueLoading(long j);

    void discardBuffer(long j, boolean z);

    void g(a aVar, long j);

    @Override
    long getBufferedPositionUs();

    @Override
    long getNextLoadPositionUs();

    eva getTrackGroups();

    @Override
    boolean isLoading();

    void maybeThrowPrepareError();

    long readDiscontinuity();

    @Override
    void reevaluateBuffer(long j);

    long seekToUs(long j);
}
