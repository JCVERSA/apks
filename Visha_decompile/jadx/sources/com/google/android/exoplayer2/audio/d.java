package com.google.android.exoplayer2.audio;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public abstract class d implements AudioProcessor {
    public AudioProcessor.a b;
    public AudioProcessor.a c;
    public AudioProcessor.a d;
    public AudioProcessor.a e;
    public ByteBuffer f;
    public ByteBuffer g;
    public boolean h;

    public d() {
        ByteBuffer byteBuffer = AudioProcessor.a;
        this.f = byteBuffer;
        this.g = byteBuffer;
        AudioProcessor.a aVar = AudioProcessor.a.e;
        this.d = aVar;
        this.e = aVar;
        this.b = aVar;
        this.c = aVar;
    }

    @Override
    public final AudioProcessor.a a(AudioProcessor.a aVar) {
        this.d = aVar;
        this.e = c(aVar);
        return isActive() ? this.e : AudioProcessor.a.e;
    }

    public final boolean b() {
        return this.g.hasRemaining();
    }

    public abstract AudioProcessor.a c(AudioProcessor.a aVar);

    public void d() {
    }

    public void e() {
    }

    public void f() {
    }

    @Override
    public final void flush() {
        this.g = AudioProcessor.a;
        this.h = false;
        this.b = this.d;
        this.c = this.e;
        d();
    }

    public final ByteBuffer g(int i) {
        if (this.f.capacity() < i) {
            this.f = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.f.clear();
        }
        ByteBuffer byteBuffer = this.f;
        this.g = byteBuffer;
        return byteBuffer;
    }

    @Override
    public ByteBuffer getOutput() {
        ByteBuffer byteBuffer = this.g;
        this.g = AudioProcessor.a;
        return byteBuffer;
    }

    @Override
    public boolean isActive() {
        return this.e != AudioProcessor.a.e;
    }

    @Override
    public boolean isEnded() {
        return this.h && this.g == AudioProcessor.a;
    }

    @Override
    public final void queueEndOfStream() {
        this.h = true;
        e();
    }

    @Override
    public final void reset() {
        flush();
        this.f = AudioProcessor.a;
        AudioProcessor.a aVar = AudioProcessor.a.e;
        this.d = aVar;
        this.e = aVar;
        this.b = aVar;
        this.c = aVar;
        f();
    }
}
