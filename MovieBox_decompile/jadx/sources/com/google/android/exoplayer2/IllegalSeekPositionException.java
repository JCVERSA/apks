package com.google.android.exoplayer2;

public final class IllegalSeekPositionException extends IllegalStateException {
    public final long positionMs;
    public final l3 timeline;
    public final int windowIndex;

    public IllegalSeekPositionException(l3 l3Var, int i10, long j10) {
        this.timeline = l3Var;
        this.windowIndex = i10;
        this.positionMs = j10;
    }
}
