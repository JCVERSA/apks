package androidx.media3.exoplayer;

public interface w3 extends t3.b {

    public interface a {
        void a();

        void b();
    }

    void c();

    void d(float f10, float f11);

    void disable();

    long e();

    void g(z3 z3Var, androidx.media3.common.r[] rVarArr, f2.u uVar, long j10, boolean z10, boolean z11, long j11, long j12, androidx.media3.exoplayer.source.r.b bVar);

    y3 getCapabilities();

    x2 getMediaClock();

    String getName();

    int getState();

    f2.u getStream();

    int getTrackType();

    boolean hasReadStreamToEnd();

    void i(int i10, x1.f4 f4Var, androidx.media3.common.util.i iVar);

    boolean isCurrentStreamFinal();

    boolean isEnded();

    boolean isReady();

    void l(androidx.media3.common.r[] rVarArr, f2.u uVar, long j10, long j11, androidx.media3.exoplayer.source.r.b bVar);

    long m(long j10, long j11);

    void maybeThrowStreamError();

    void n(androidx.media3.common.e0 e0Var);

    void release();

    void render(long j10, long j11);

    void reset();

    void resetPosition(long j10);

    void setCurrentStreamFinal();

    void start();

    void stop();
}
