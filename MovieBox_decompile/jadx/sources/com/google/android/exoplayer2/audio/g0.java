package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.util.p0;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

public final class g0 implements AudioProcessor {

    private int f23996b;

    private float f23997c = 1.0f;

    private float f23998d = 1.0f;

    private AudioProcessor.a f23999e;

    private AudioProcessor.a f24000f;

    private AudioProcessor.a f24001g;

    private AudioProcessor.a f24002h;

    private boolean f24003i;

    private f0 f24004j;

    private ByteBuffer f24005k;

    private ShortBuffer f24006l;

    private ByteBuffer f24007m;

    private long f24008n;

    private long f24009o;

    private boolean f24010p;

    public g0() {
        AudioProcessor.a aVar = AudioProcessor.a.f23838e;
        this.f23999e = aVar;
        this.f24000f = aVar;
        this.f24001g = aVar;
        this.f24002h = aVar;
        ByteBuffer byteBuffer = AudioProcessor.f23837a;
        this.f24005k = byteBuffer;
        this.f24006l = byteBuffer.asShortBuffer();
        this.f24007m = byteBuffer;
        this.f23996b = -1;
    }

    @Override
    public AudioProcessor.a a(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f23841c != 2) {
            throw new AudioProcessor.UnhandledAudioFormatException(aVar);
        }
        int i10 = this.f23996b;
        if (i10 == -1) {
            i10 = aVar.f23839a;
        }
        this.f23999e = aVar;
        AudioProcessor.a aVar2 = new AudioProcessor.a(i10, aVar.f23840b, 2);
        this.f24000f = aVar2;
        this.f24003i = true;
        return aVar2;
    }

    public long b(long j10) {
        if (this.f24009o < 1024) {
            return (long) (((double) this.f23997c) * j10);
        }
        long jL = this.f24008n - ((long) ((f0) com.google.android.exoplayer2.util.a.e(this.f24004j)).l());
        int i10 = this.f24002h.f23839a;
        int i11 = this.f24001g.f23839a;
        return i10 == i11 ? p0.N0(j10, jL, this.f24009o) : p0.N0(j10, jL * ((long) i10), this.f24009o * ((long) i11));
    }

    public void c(float f10) {
        if (this.f23998d != f10) {
            this.f23998d = f10;
            this.f24003i = true;
        }
    }

    public void d(float f10) {
        if (this.f23997c != f10) {
            this.f23997c = f10;
            this.f24003i = true;
        }
    }

    @Override
    public void flush() {
        if (isActive()) {
            AudioProcessor.a aVar = this.f23999e;
            this.f24001g = aVar;
            AudioProcessor.a aVar2 = this.f24000f;
            this.f24002h = aVar2;
            if (this.f24003i) {
                this.f24004j = new f0(aVar.f23839a, aVar.f23840b, this.f23997c, this.f23998d, aVar2.f23839a);
            } else {
                f0 f0Var = this.f24004j;
                if (f0Var != null) {
                    f0Var.i();
                }
            }
        }
        this.f24007m = AudioProcessor.f23837a;
        this.f24008n = 0L;
        this.f24009o = 0L;
        this.f24010p = false;
    }

    @Override
    public ByteBuffer getOutput() {
        int iK;
        f0 f0Var = this.f24004j;
        if (f0Var != null && (iK = f0Var.k()) > 0) {
            if (this.f24005k.capacity() < iK) {
                ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(iK).order(ByteOrder.nativeOrder());
                this.f24005k = byteBufferOrder;
                this.f24006l = byteBufferOrder.asShortBuffer();
            } else {
                this.f24005k.clear();
                this.f24006l.clear();
            }
            f0Var.j(this.f24006l);
            this.f24009o += (long) iK;
            this.f24005k.limit(iK);
            this.f24007m = this.f24005k;
        }
        ByteBuffer byteBuffer = this.f24007m;
        this.f24007m = AudioProcessor.f23837a;
        return byteBuffer;
    }

    @Override
    public boolean isActive() {
        return this.f24000f.f23839a != -1 && (Math.abs(this.f23997c - 1.0f) >= 1.0E-4f || Math.abs(this.f23998d - 1.0f) >= 1.0E-4f || this.f24000f.f23839a != this.f23999e.f23839a);
    }

    @Override
    public boolean isEnded() {
        f0 f0Var;
        return this.f24010p && ((f0Var = this.f24004j) == null || f0Var.k() == 0);
    }

    @Override
    public void queueEndOfStream() {
        f0 f0Var = this.f24004j;
        if (f0Var != null) {
            f0Var.s();
        }
        this.f24010p = true;
    }

    @Override
    public void queueInput(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            f0 f0Var = (f0) com.google.android.exoplayer2.util.a.e(this.f24004j);
            ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
            int iRemaining = byteBuffer.remaining();
            this.f24008n += (long) iRemaining;
            f0Var.t(shortBufferAsShortBuffer);
            byteBuffer.position(byteBuffer.position() + iRemaining);
        }
    }

    @Override
    public void reset() {
        this.f23997c = 1.0f;
        this.f23998d = 1.0f;
        AudioProcessor.a aVar = AudioProcessor.a.f23838e;
        this.f23999e = aVar;
        this.f24000f = aVar;
        this.f24001g = aVar;
        this.f24002h = aVar;
        ByteBuffer byteBuffer = AudioProcessor.f23837a;
        this.f24005k = byteBuffer;
        this.f24006l = byteBuffer.asShortBuffer();
        this.f24007m = byteBuffer;
        this.f23996b = -1;
        this.f24003i = false;
        this.f24004j = null;
        this.f24008n = 0L;
        this.f24009o = 0L;
        this.f24010p = false;
    }
}
