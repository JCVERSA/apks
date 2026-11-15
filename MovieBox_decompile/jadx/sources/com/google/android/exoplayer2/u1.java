package com.google.android.exoplayer2;

public interface u1 {
    void a(y2[] y2VarArr, v9.y yVar, na.s[] sVarArr);

    boolean b(long j10, float f10, boolean z10, long j11);

    boolean c(long j10, long j11, float f10);

    com.google.android.exoplayer2.upstream.b getAllocator();

    long getBackBufferDurationUs();

    void onPrepared();

    void onReleased();

    void onStopped();

    boolean retainBackBufferFromKeyframe();
}
