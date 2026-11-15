package androidx.media3.exoplayer;

public final class j {

    public int f11719a;

    public int f11720b;

    public int f11721c;

    public int f11722d;

    public int f11723e;

    public int f11724f;

    public int f11725g;

    public int f11726h;

    public int f11727i;

    public int f11728j;

    public long f11729k;

    public int f11730l;

    private void b(long j10, int i10) {
        this.f11729k += j10;
        this.f11730l += i10;
    }

    public void a(long j10) {
        b(j10, 1);
    }

    public synchronized void c() {
    }

    public String toString() {
        return androidx.media3.common.util.a1.G("DecoderCounters {\n decoderInits=%s,\n decoderReleases=%s\n queuedInputBuffers=%s\n skippedInputBuffers=%s\n renderedOutputBuffers=%s\n skippedOutputBuffers=%s\n droppedBuffers=%s\n droppedInputBuffers=%s\n maxConsecutiveDroppedBuffers=%s\n droppedToKeyframeEvents=%s\n totalVideoFrameProcessingOffsetUs=%s\n videoFrameProcessingOffsetCount=%s\n}", Integer.valueOf(this.f11719a), Integer.valueOf(this.f11720b), Integer.valueOf(this.f11721c), Integer.valueOf(this.f11722d), Integer.valueOf(this.f11723e), Integer.valueOf(this.f11724f), Integer.valueOf(this.f11725g), Integer.valueOf(this.f11726h), Integer.valueOf(this.f11727i), Integer.valueOf(this.f11728j), Long.valueOf(this.f11729k), Integer.valueOf(this.f11730l));
    }
}
