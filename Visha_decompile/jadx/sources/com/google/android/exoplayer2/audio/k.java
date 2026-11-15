package com.google.android.exoplayer2.audio;

import defpackage.blb;
import defpackage.fs9;
import defpackage.zi;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

public final class k implements AudioProcessor {
    public int b;
    public float c = 1.0f;
    public float d = 1.0f;
    public AudioProcessor.a e;
    public AudioProcessor.a f;
    public AudioProcessor.a g;
    public AudioProcessor.a h;
    public boolean i;
    public fs9 j;
    public ByteBuffer k;
    public ShortBuffer l;
    public ByteBuffer m;
    public long n;
    public long o;
    public boolean p;

    public k() {
        AudioProcessor.a aVar = AudioProcessor.a.e;
        this.e = aVar;
        this.f = aVar;
        this.g = aVar;
        this.h = aVar;
        ByteBuffer byteBuffer = AudioProcessor.a;
        this.k = byteBuffer;
        this.l = byteBuffer.asShortBuffer();
        this.m = byteBuffer;
        this.b = -1;
    }

    @Override
    public AudioProcessor.a a(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.c != 2) {
            throw new AudioProcessor.UnhandledAudioFormatException(aVar);
        }
        int i = this.b;
        if (i == -1) {
            i = aVar.a;
        }
        this.e = aVar;
        AudioProcessor.a aVar2 = new AudioProcessor.a(i, aVar.b, 2);
        this.f = aVar2;
        this.i = true;
        return aVar2;
    }

    public long b(long j) {
        if (this.o < 1024) {
            return (long) (((double) this.c) * j);
        }
        long jL = this.n - ((long) ((fs9) zi.e(this.j)).l());
        int i = this.h.a;
        int i2 = this.g.a;
        return i == i2 ? blb.B0(j, jL, this.o) : blb.B0(j, jL * ((long) i), this.o * ((long) i2));
    }

    public void c(float f) {
        if (this.d != f) {
            this.d = f;
            this.i = true;
        }
    }

    public void d(float f) {
        if (this.c != f) {
            this.c = f;
            this.i = true;
        }
    }

    @Override
    public void flush() {
        if (isActive()) {
            AudioProcessor.a aVar = this.e;
            this.g = aVar;
            AudioProcessor.a aVar2 = this.f;
            this.h = aVar2;
            if (this.i) {
                this.j = new fs9(aVar.a, aVar.b, this.c, this.d, aVar2.a);
            } else {
                fs9 fs9Var = this.j;
                if (fs9Var != null) {
                    fs9Var.i();
                }
            }
        }
        this.m = AudioProcessor.a;
        this.n = 0L;
        this.o = 0L;
        this.p = false;
    }

    @Override
    public ByteBuffer getOutput() {
        int iK;
        fs9 fs9Var = this.j;
        if (fs9Var != null && (iK = fs9Var.k()) > 0) {
            if (this.k.capacity() < iK) {
                ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(iK).order(ByteOrder.nativeOrder());
                this.k = byteBufferOrder;
                this.l = byteBufferOrder.asShortBuffer();
            } else {
                this.k.clear();
                this.l.clear();
            }
            fs9Var.j(this.l);
            this.o += (long) iK;
            this.k.limit(iK);
            this.m = this.k;
        }
        ByteBuffer byteBuffer = this.m;
        this.m = AudioProcessor.a;
        return byteBuffer;
    }

    @Override
    public boolean isActive() {
        return this.f.a != -1 && (Math.abs(this.c - 1.0f) >= 1.0E-4f || Math.abs(this.d - 1.0f) >= 1.0E-4f || this.f.a != this.e.a);
    }

    @Override
    public boolean isEnded() {
        fs9 fs9Var;
        return this.p && ((fs9Var = this.j) == null || fs9Var.k() == 0);
    }

    @Override
    public void queueEndOfStream() {
        fs9 fs9Var = this.j;
        if (fs9Var != null) {
            fs9Var.s();
        }
        this.p = true;
    }

    @Override
    public void queueInput(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            fs9 fs9Var = (fs9) zi.e(this.j);
            ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
            int iRemaining = byteBuffer.remaining();
            this.n += (long) iRemaining;
            fs9Var.t(shortBufferAsShortBuffer);
            byteBuffer.position(byteBuffer.position() + iRemaining);
        }
    }

    @Override
    public void reset() {
        this.c = 1.0f;
        this.d = 1.0f;
        AudioProcessor.a aVar = AudioProcessor.a.e;
        this.e = aVar;
        this.f = aVar;
        this.g = aVar;
        this.h = aVar;
        ByteBuffer byteBuffer = AudioProcessor.a;
        this.k = byteBuffer;
        this.l = byteBuffer.asShortBuffer();
        this.m = byteBuffer;
        this.b = -1;
        this.i = false;
        this.j = null;
        this.n = 0L;
        this.o = 0L;
        this.p = false;
    }
}
