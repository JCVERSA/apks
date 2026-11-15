package androidx.media3.common;

public final class IllegalSeekPositionException extends IllegalStateException {
    public final long positionMs;
    public final e0 timeline;
    public final int windowIndex;

    public IllegalSeekPositionException(e0 e0Var, int i10, long j10) {
        this.timeline = e0Var;
        this.windowIndex = i10;
        this.positionMs = j10;
    }
}
