package com.google.android.exoplayer2;

public interface m {
    void a(n.g gVar);

    float getAdjustedPlaybackSpeed(long j, long j2);

    long getTargetLiveOffsetUs();

    void notifyRebuffer();

    void setTargetLiveOffsetOverrideUs(long j);
}
