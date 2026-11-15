package com.google.android.exoplayer2.decoder;

import com.google.android.exoplayer2.util.p0;

public final class e {

    public int f24234a;

    public int f24235b;

    public int f24236c;

    public int f24237d;

    public int f24238e;

    public int f24239f;

    public int f24240g;

    public int f24241h;

    public int f24242i;

    public int f24243j;

    public long f24244k;

    public int f24245l;

    private void b(long j10, int i10) {
        this.f24244k += j10;
        this.f24245l += i10;
    }

    public void a(long j10) {
        b(j10, 1);
    }

    public synchronized void c() {
    }

    public String toString() {
        return p0.C("DecoderCounters {\n decoderInits=%s,\n decoderReleases=%s\n queuedInputBuffers=%s\n skippedInputBuffers=%s\n renderedOutputBuffers=%s\n skippedOutputBuffers=%s\n droppedBuffers=%s\n droppedInputBuffers=%s\n maxConsecutiveDroppedBuffers=%s\n droppedToKeyframeEvents=%s\n totalVideoFrameProcessingOffsetUs=%s\n videoFrameProcessingOffsetCount=%s\n}", Integer.valueOf(this.f24234a), Integer.valueOf(this.f24235b), Integer.valueOf(this.f24236c), Integer.valueOf(this.f24237d), Integer.valueOf(this.f24238e), Integer.valueOf(this.f24239f), Integer.valueOf(this.f24240g), Integer.valueOf(this.f24241h), Integer.valueOf(this.f24242i), Integer.valueOf(this.f24243j), Long.valueOf(this.f24244k), Integer.valueOf(this.f24245l));
    }
}
