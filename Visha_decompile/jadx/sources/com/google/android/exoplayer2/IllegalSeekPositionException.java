package com.google.android.exoplayer2;

public final class IllegalSeekPositionException extends IllegalStateException {
    public final long positionMs;
    public final a0 timeline;
    public final int windowIndex;

    public IllegalSeekPositionException(a0 a0Var, int i, long j) {
        this.timeline = a0Var;
        this.windowIndex = i;
        this.positionMs = j;
    }
}
