package com.google.android.exoplayer2;

import defpackage.h19;
import defpackage.ks8;
import defpackage.ls8;
import defpackage.nd6;
import defpackage.ta8;

public interface w extends u.b {

    public interface a {
        void onSleep();

        void onWakeup();
    }

    void c(k[] kVarArr, h19 h19Var, long j, long j2);

    void d(int i, ta8 ta8Var);

    void disable();

    void e(ls8 ls8Var, k[] kVarArr, h19 h19Var, long j, boolean z, boolean z2, long j2, long j3);

    ks8 getCapabilities();

    nd6 getMediaClock();

    String getName();

    long getReadingPositionUs();

    int getState();

    h19 getStream();

    int getTrackType();

    boolean hasReadStreamToEnd();

    boolean isCurrentStreamFinal();

    boolean isEnded();

    boolean isReady();

    void maybeThrowStreamError();

    void render(long j, long j2);

    void reset();

    void resetPosition(long j);

    void setCurrentStreamFinal();

    default void setPlaybackSpeed(float f, float f2) {
    }

    void start();

    void stop();
}
