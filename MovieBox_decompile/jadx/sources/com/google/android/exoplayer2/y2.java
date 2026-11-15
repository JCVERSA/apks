package com.google.android.exoplayer2;

public interface y2 extends t2.b {

    public interface a {
        void a();

        void b();
    }

    void c(b3 b3Var, p1[] p1VarArr, v9.s sVar, long j10, boolean z10, boolean z11, long j11, long j12);

    void d(float f10, float f11);

    void disable();

    long e();

    void f(p1[] p1VarArr, v9.s sVar, long j10, long j11);

    a3 getCapabilities();

    com.google.android.exoplayer2.util.u getMediaClock();

    String getName();

    int getState();

    v9.s getStream();

    int getTrackType();

    void h(int i10, g9.u1 u1Var);

    boolean hasReadStreamToEnd();

    boolean isCurrentStreamFinal();

    boolean isEnded();

    boolean isReady();

    void maybeThrowStreamError();

    void render(long j10, long j11);

    void reset();

    void resetPosition(long j10);

    void setCurrentStreamFinal();

    void start();

    void stop();
}
